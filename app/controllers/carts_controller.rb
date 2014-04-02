class CartsController < ApplicationController

  def add_item
    menu_item = MenuItem.find(params[:cart][:menu_item_id])
    restaurant = menu_item.restaurant
    if restaurant.open? 
      @cart = User.get_cart(cookies[:cart_token],current_user)
      cookies[:cart_token] = @cart.token
      @cart_menu_item = @cart.cart_menu_items.new(params[:cart])
      @cart_menu_item.restaurant_id = restaurant.id
      if @cart_menu_item.save
          flash[:notice] = 'Item was successfully added to cart.'
          redirect_to :back
      else
        flash[:notice] = 'Something going wrong  to add item into cart.'
        redirect_to :back
      end
    else
      flash[:notice] = 'This Restaurant is closed now so you couldnot order'
      redirect_to :back
    end

  end

  def edit_item
    @cart_menu_item = CartMenuItem.find(params[:id])
    if @cart_menu_item.update_attributes(params[:cart])
      flash[:notice] = 'cart updated successfully'
      redirect_to :back
    else
      flash[:notice] = 'cart not updated.'
      redirect_to :back
    end

  end

  def checkout
    if user_signed_in?
      @cart = current_user.cart

      unless @cart.blank?

        #render :partial => "welcome/order_view_option"
        render :partial => "welcome/payment_information"
      else
        render :partial => "welcome/menu_item_option" 
      end  
    else
      flash[:notice] = 'Before checkout please Sign In'
      render :partial => "welcome/get_user_information"
    end
  end

  def create_order
    @cart = current_user.cart
    total_bill = @cart.total_bill(Restaurant.find(params[:restaurant_id]))
   
    Braintree::Configuration.environment = :sandbox
    Braintree::Configuration.merchant_id = "6q6zvwjk33nr2wh6"
    Braintree::Configuration.public_key = "z8wb4mz95s5hj74g"
    Braintree::Configuration.private_key = "fca0105a4b3e363f763ffc31a5d69ce8"

    unless params[:order].blank?
      if params[:address_type] == "stored-address"
        address =   Address.find(params[:order][:address_id])
      else 
        address =  Address.new(params[:address])
        address.user_id = current_user.id
        address.save
        params[:order][:address_id] = address.id
      end 
      p params[:order]

      if params[:payment_method] == "credit card"
        if params[:card] == "stored"
          @card = current_user.cards.find(params[:card_id])
          @result = Braintree::Transaction.sale(
            :amount => total_bill,
            :customer_id => current_user.customer_id,
            :payment_method_token => @card.token
          )  
        else
          @result = Braintree::Transaction.sale(
            :amount => total_bill,
            :credit_card => {
              :number => params[:card_number],
              :expiration_year => params[:card_info]["expiration_date(1i)"],
              :expiration_month => params[:card_info]["expiration_date(2i)"]
            }  
          )

          @new_card_result = Braintree::CreditCard.create(
            :customer_id => current_user.customer_id,
            :number => params[:card_number],
            :expiration_year => params[:card_info]["expiration_date(1i)"],
            :expiration_month => params[:card_info]["expiration_date(2i)"]
          )

          if @new_card_result.success? 
            @card = Card.new(params[:card_info])
            @card.user_id = current_user.id
            @card.masked_number = @new_card_result.credit_card.masked_number
            @card.unique_number_identifier = @new_card_result.credit_card.unique_number_identifier
            @card.card_type = @new_card_result.credit_card.card_type
            @card.token = @new_card_result.credit_card.token
            @card.save
          else
            p "Invalid new card information"  
          end
        end
        if @result.success?
          
          @order = Order.new params[:order]
          @order.user_id = current_user.id
          @order.status = "pending"
          @order.method_type ="Credit Card"
          @order.card_id = @card.id
          @order.restaurant = @cart.menu_items.last.restaurant
          @order.save
          @cart.cart_menu_items.each do |item|
            @menu_item_order = MenuItemOrder.new :order_id => @order.id, :quantity => item.quantity, :menu_item_property_id => item.menu_item_property_id, :restaurant_id => item.restaurant_id, :instruction => item.instruction   
            @menu_item_order.menu_item = item.menu_item
            @menu_item_order.save 
          end
          @cart.destroy
          flash[:notice] = 'Order was successfully created'
          redirect_to order_welcome_path(@order)  
        else
          flash[:warning] = "Invalid card information"
          redirect_to :back
        end  
      else
        result =   @cart.paypal_url('http://localhost:3000/carts/paypal_order_create?cart_id='+@cart.id.to_s+'&address_id='+address.id.to_s+'&delivery_instruction='+params[:order][:delivery_instruction].to_s+'&order_type='+params[:order][:order_type].to_s+'&request_time='+params[:order][:request_time].to_s ,total_bill)
        redirect_to result
      end   
    end 

  end

  def update_cart_item_quantity
    if user_signed_in?
      cart=current_user.cart
    else
      cart=Cart.find_by_token(cookies[:cart_token])
    end
    

    @cart_menu_item =  cart.cart_menu_items.find(params[:id])
    respond_to do |format|
      if @cart_menu_item.update_attributes(:quantity => params[:quantity]) 
        @restaurant = Restaurant.find(params[:restaurant_id])
        @sub_total = cart.sub_total
        @sale_tax = cart.sale_tax(@restaurant)
        @total_bill =  cart.total_bill(@restaurant)  
        format.js
      else
        format.js
      end
    end   
  end

  def delete_cart_item
    if user_signed_in?
      cart=current_user.cart
    else
      cart=Cart.find_by_token(cookies[:cart_token])
    end
    @cart_menu_item =  cart.cart_menu_items.find(params[:id])
    respond_to do |format|
      if @cart_menu_item.destroy 
        @restaurant = Restaurant.find(params[:restaurant_id])
        @sub_total = cart.sub_total
        @sale_tax = cart.sale_tax(@restaurant)
        @total_bill =  cart.total_bill(@restaurant)  
        format.js
      else
        format.js
      end
    end 
  end

  def paypal_order_create
    @cart = Cart.find(params[:cart_id].to_i)
    @order = Order.new(:address_id => params[:address_id].to_i, :order_type => params[:order_type], :request_time => params[:request_time], :delivery_instruction => params[:delivery_instruction], :method_type => 'Paypal')
    @order.user_id = current_user.id
    @order.status = "pending"
    @order.restaurant = @cart.menu_items.last.restaurant
    @order.save
    @cart.cart_menu_items.each do |item|
      @menu_item_order = MenuItemOrder.new :order_id => @order.id, :quantity => item.quantity, :menu_item_property_id => item.menu_item_property_id, :restaurant_id => item.restaurant_id, :instruction => item.instruction   
      @menu_item_order.menu_item = item.menu_item
      @menu_item_order.save 
    end
    @cart.destroy
    flash[:notice] = 'Order was successfully created'
    redirect_to order_welcome_path(@order)  
  end
end