class CartsController < ApplicationController
  respond_to :html, :xml, :json
  def add_item
    menu_item = MenuItem.find(params[:cart][:menu_item_id])
    restaurant = menu_item.restaurant
    if restaurant.open? 
      @cart = User.get_cart(cookies[:cart_token],current_user,restaurant)
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
      @cart = current_user.carts.find_by_restaurant_id(params[:restaurant_id])
      @restaurant = Restaurant.find params[:restaurant_id]
      unless @cart.blank?
        render :partial => "welcome/payment_information", :locals => {:@cart => @cart, :@restaurant => @restaurant}
      else
        render :partial => "welcome/menu_item_option" 
      end  
    else
      flash[:notice] = 'Before checkout please Sign In'
      render :partial => "welcome/get_user_information"
    end
  end

  def create_order
    @cart = current_user.carts.find_by_restaurant_id(params[:restaurant_id])
    params[:order][:tip] = params[:order][:tip] ||= 0.0

    total_bill = @cart.total_bill(@cart.restaurant)
    total_bill += (@cart.total_bill(@cart.restaurant) * params[:order][:tip].to_f)/100
    
    p total_bill

    unless params[:order].blank?

      unless params[:order][:order_type] == "pickup"
        if params[:address_type] == "stored-address"
          address =   Address.find(params[:order][:address_id])
        else 
          address =  Address.new(params[:address])
          address.user_id = current_user.id
          address.save
          params[:order][:address_id] = address.id
        end 
      end
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
          @order.order_type = params[:order][:order_type]
          @order.method_type = "Credit Card"
          @order.card_id = @card.id
          @order.restaurant = @cart.restaurant
          @order.secure_code = SecureRandom.hex(3)
          @order.save

          payment = @order.build_payment
          payment.user_id = current_user.id
          payment.transaction_id = @result.transaction.id
          payment.transaction_at = @result.transaction.created_at
          payment.transaction_status = @result.transaction.status
          payment.amount  = @result.transaction.amount
          payment.save

          @cart.cart_menu_items.each do |item|
            @menu_item_order = MenuItemOrder.new :order_id => @order.id, :quantity => item.quantity, :menu_item_property_id => item.menu_item_property_id, :restaurant_id => item.restaurant_id, :instruction => item.instruction   
            @menu_item_order.menu_item = item.menu_item
            @menu_item_order.save 
          end
          send_order(@order)
          @cart.destroy
          flash[:notice] = 'Order was successfully created'
           
          redirect_to order_welcome_path(@order)  
        else
          flash[:warning] = "Invalid card information"
          redirect_to :back
        end  
      else
      unless params[:order][:order_type] == "pickup"
          result = @cart.paypal_url(APP_CONFIG["domain"]+'carts/paypal_order_create?cart_id='+@cart.id.to_s+'&address_id='+address.id.to_s+'&delivery_instruction='+params[:order][:delivery_instruction].to_s+'&request_time='+params[:order][:request_time].to_s+'&tip='+params[:order][:tip].to_s ,total_bill)
      else
          result = @cart.paypal_url(APP_CONFIG["domain"]+'carts/paypal_order_create?cart_id='+@cart.id.to_s+'&request_time='+params[:order][:request_time].to_s+'&tip='+params[:order][:tip].to_s ,total_bill)
      end
      redirect_to result
      end
    end 
  end

  def update_cart_item_quantity
    if user_signed_in?
      cart=current_user.carts.find_by_restaurant_id(params[:restaurant_id])
    else
      cart=Cart.find_by_token_and_restaurant_id(cookies[:cart_token], params[:restaurant_id])
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
      cart=current_user.carts.find_by_restaurant_id(params[:restaurant_id])
    else
      cart=Cart.find_by_token_and_restaurant_id(cookies[:cart_token], params[:restaurant_id])
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
    if @cart.order_type == "pickup"
      @order = Order.new(:order_type => 'pickup', :request_time => params[:request_time], :method_type => 'Paypal', :tip => params[:tip].to_f)
    else
      @order = Order.new(:address_id => params[:address_id].to_i, :order_type => 'delivery', :request_time => params[:request_time], :delivery_instruction => params[:delivery_instruction], :method_type => 'Paypal', :tip => params[:tip].to_f)
    end 
    @order.user_id = current_user.id
    @order.status = "pending"
    @order.restaurant = @cart.restaurant
    @order.secure_code = SecureRandom.hex(3)
    @order.save
    @cart.cart_menu_items.each do |item|
      @menu_item_order = MenuItemOrder.new :order_id => @order.id, :quantity => item.quantity, :menu_item_property_id => item.menu_item_property_id, :restaurant_id => item.restaurant_id, :instruction => item.instruction   
      @menu_item_order.menu_item = item.menu_item
      @menu_item_order.save 
    end
    send_order(@order)
    @cart.destroy
    flash[:notice] = 'Order was successfully created'
    redirect_to order_welcome_path(@order)  
  end

  def update_order_type
    order_type = params[:order_type]
    @cart = Cart.find(params[:id])
    @cart.order_type = order_type
    respond_to do |format|
      if @cart.save
        @restaurant = Restaurant.find(params[:restaurant_id])
        @total_bill =  @cart.total_bill(@restaurant) 
        @delivery_charges = @cart.delivery_charges(@restaurant)
        @type = @cart.order_type
        format.js
      else
        format.js
      end
    end      
  end

  def process_gether
    p params

    digit = params[:Digits]
    p digit
    # order = Order.find(params[:id].to_i)
    # if order.secure_code == digit.to_i
    #   order.status = "confirm"
    # else
    #   order.status = "rejected"
    # end
    # order.save
    render :text => "Order status updated"
  end

  def voice
    p "reading xml"
    respond_with do |format|
      format.xml
    end
  end

  private

  def send_order(order)
    #email_order_to_restaurant_resources(order)
    # if order.restaurant.can_fax?
    #   send_fax_to_restaurant(order)
    # else
    #   p "Fax Not Avaiable"
    #   make_call(order.restaurant)
    #   #order.update_attributes(:status => "confirm")
    # end
        make_call(order.restaurant,order)
  end

  def email_order_to_restaurant_resources(order)
    order_reciept = render_to_string(:template => "carts/order_reciept", :locals => {:order => order}, :layout => false ) 
    UserMailer.new_order(order, order_reciept).deliver
  end

  def send_fax_to_restaurant(order)
    order_reciept = render_to_string(:template => "carts/order_reciept", :locals => {:order => order}, :layout => false )
    @fax = Phaxio.send_fax(to: order.restaurant.fax_number ,string_data_type: 'html', string_data: order_reciept )
    if @fax["success"]
       make_call(order.restaurant,order) 
       order.update_attributes(:status => "confirm")
    else  
      p "Error in Fax information"
      false
    end
  end 

  def make_call(restaurant,order)
    p restaurant.phone_number
    @order = order

    # @client = Twilio::REST::Client.new APP_CONFIG["twilio-account-sid"], APP_CONFIG["twilio-auth-token"]
    # @message = @client.account.messages.create({
    #   :from => '+13477897512',   :to => restaurant.phone_number , :body => "New order has placed now..."
    # })
    # p @message
    @client = Twilio::REST::Client.new APP_CONFIG["twilio-account-sid"], APP_CONFIG["twilio-auth-token"]
    p @client
    #@call = @client.account.calls.create(:from => '+17189253361',:to => restaurant.phone_number, :record => true, :url => voice_carts_url )
    @call = @client.account.calls.create(:from => '+17189253361',:to => '+923353455244', :url => voice_carts_url, :method => :get)
    #p @call
  end

end