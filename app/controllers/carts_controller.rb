class CartsController < ApplicationController

  respond_to :html, :xml, :json

  def add_item
    menu_item = MenuItem.find(params[:cart][:menu_item_id])
    restaurant = menu_item.restaurant
    if restaurant.open?
      @cart = User.get_cart(cookies[:cart_token],current_user,restaurant)
      cookies[:cart_token] = @cart.token
      params[:cart][:group_item_ids] = params[:cart][:group_item_ids].values.flatten

      @cart_menu_item = @cart.cart_menu_items.new(params[:cart])

      @cart_menu_item.restaurant_id = restaurant.id
      if @cart_menu_item.save
          #flash[:notice] = 'Item was successfully added to cart.'
          redirect_to :back
      else
        #flash[:notice] = 'Something going wrong  to add item into cart.'
        redirect_to :back
      end
    else
      #flash[:notice] = 'This Restaurant is closed now so you couldnot order'
      redirect_to :back
    end

  end

  def edit_item
    @cart_menu_item = CartMenuItem.find(params[:id])
    params[:cart][:group_item_ids] = params[:cart][:group_item_ids].values.flatten
    if @cart_menu_item.update_attributes(params[:cart])
      flash[:notice] = 'cart updated successfully'
      redirect_to :back
    else
      flash[:notice] = 'cart not updated.'
      redirect_to :back
    end

  end

  def checkout
    @restaurant = Restaurant.find params[:restaurant_id]
    if user_signed_in?
      @cart = current_user.carts.find_by_restaurant_id(params[:restaurant_id])
      unless @cart.blank?
        render :partial => "welcome/payment_information", :locals => {:@cart => @cart, :@restaurant => @restaurant}
      else
        render :partial => "welcome/menu_item_option"
      end
    elsif cookies[:guest_token].present?
      @guest = Guest.last
      @cart =  @guest.carts.find_by_restaurant_id(@restaurant.id)
      unless @cart.blank?
        render :partial => "guests/payment_information", :locals => {:@cart => @cart, :@restaurant => @restaurant, :@guest => @guest}
      else
        render :partial => "welcome/menu_item_option"
      end
    else
      flash[:notice] = 'Before checkout please Sign In'
      render :partial => "welcome/get_user_information"
    end
  end

  def apply_coupon
    @restaurant = Restaurant.where(id: params[:id]).first
    @coupon = @restaurant.valid_coupon_code(params[:code])
    respond_to do |format|
      format.js
    end
  end

  def create_order
    if cookies[:guest_token].present?
      @guest = Guest.last
      @cart =  @guest.carts.find_by_restaurant_id(params[:restaurant_id])
    else
      @cart = current_user.carts.find_by_restaurant_id(params[:restaurant_id])
    end
    params[:order][:tip] = params[:order][:tip] ||= 0.0

    total_bill = @cart.total_bill(@cart.restaurant)
    total_bill += (@cart.total_bill(@cart.restaurant) * params[:order][:tip].to_f)/100

    unless params[:order].blank?

      unless params[:order][:order_type] == "pickup"
        if params[:address_type] == "stored-address"
          address =   Address.find(params[:order][:address_id])
        else
          address =  Address.new(params[:address])
          address.user_id = current_user.id unless current_user.blank?
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
          customer_id = current_user.blank? ? @guest.id : current_user.customer_id
          @new_card_result = Braintree::CreditCard.create(
            :customer_id => customer_id,
            :number => params[:card_number],
            :expiration_year => params[:card_info]["expiration_date(1i)"],
            :expiration_month => params[:card_info]["expiration_date(2i)"]
          )

          if @new_card_result.success?
            @card = Card.new(params[:card_info])
            @card.user_id = current_user.id unless current_user.blank?
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
          @order.user_id = current_user.id unless current_user.blank?
          @order.guest_id = @cart.guest.id if current_user.blank?
          @order.status = "pending"
          @order.order_type = params[:order][:order_type]
          @order.method_type = "Credit Card"
          @order.card_id = @card.id unless @card.blank?
          @order.restaurant = @cart.restaurant
          @order.secure_code = SecureRandom.random_number(10000)
          @order.save
          payment = @order.build_payment :transaction_id => @result.transaction.id, :transaction_at => @result.transaction.created_at, :transaction_status => @result.transaction.status, :amount => @result.transaction.amount
          payment.save
          @cart.cart_menu_items.each do |item|
            @menu_item_order = MenuItemOrder.new :order_id => @order.id, :quantity => item.quantity, :restaurant_id => item.restaurant_id, :instruction => item.instruction
            @menu_item_order.menu_item = item.menu_item
            @menu_item_order.group_item_ids = item.group_item_ids
            @menu_item_order.save
          end
          @order.update_user_points unless current_user.blank?
          send_order(@order)
          #publish_order
          @cart.destroy
          flash[:notice] = 'Order was successfully created'
          respond_to do |format|
            format.html { redirect_to order_welcome_path(@order) }
            format.js
          end
        else
          #flash[:warning] = "Invalid card information"
          redirect_to :back
        end
      else
      unless params[:order][:order_type] == "pickup"
        params[:order][:coupon_id] = params[:order][:coupon_id].nil? ? '' : params[:order][:coupon_id]
        params[:order][:coupon_off] = params[:order][:coupon_off].nil? ? '' : params[:order][:coupon_off]
        result = @cart.paypal_url(APP_CONFIG["domain"]+'carts/paypal_order_create?cart_id='+@cart.id.to_s+'&address_id='+address.id.to_s+'&delivery_instruction='+params[:order][:delivery_instruction].to_s+'&order_date_time='+params[:order][:order_date_time].to_s+'&tip='+params[:order][:tip].to_s+'&coupon_id='+params[:order][:coupon_id]+'&coupon_off='+params[:order][:coupon_off] ,total_bill)
      else
        result = @cart.paypal_url(APP_CONFIG["domain"]+'carts/paypal_order_create?cart_id='+@cart.id.to_s+'&order_date_time='+params[:order][:order_date_time].to_s+'&tip='+params[:order][:tip].to_s+'&coupon_id='+params[:order][:coupon_id]+'&coupon_off='+params[:order][:coupon_off] ,total_bill)
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
    p params
    if @cart.order_type == "pickup"
      @order = Order.new(:order_type => 'pickup', :order_date_time => params[:order_date_time], :method_type => 'Paypal', :tip => params[:tip].to_f,:coupon_id => params[:coupon_id].to_i, :coupon_off => params[:coupon_off])
    else
      @order = Order.new(:address_id => params[:address_id].to_i, :order_type => 'delivery', :order_date_time => params[:order_date_time], :delivery_instruction => params[:delivery_instruction], :method_type => 'Paypal', :tip => params[:tip].to_f, :coupon_id => params[:coupon_id].to_i, :coupon_off => params[:coupon_off])
    end
    @order.user_id = current_user.id unless current_user.blank?
    @order.guest_id = @cart.guest.id if current_user.blank?
    @order.status = "pending"
    @order.restaurant = @cart.restaurant
    @order.secure_code = SecureRandom.random_number(10000)
    @order.save
    @cart.cart_menu_items.each do |item|
      @menu_item_order = MenuItemOrder.new :order_id => @order.id, :quantity => item.quantity, :restaurant_id => item.restaurant_id, :instruction => item.instruction
      @menu_item_order.menu_item = item.menu_item
      @menu_item_order.group_items = item.group_items
      @menu_item_order.save
    end
    @order.update_user_points unless current_user.blank?
    send_order(@order)
    #publish_order
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
    digit = params["Digits"]
    order = Order.last
    if order.secure_code == digit
      order.status = "confirm"
      order.save
      send_confirm_email_to_customer
    else
      order.status = "pending"
      order.save
    end
    render :text => "Order status updated"
  end

  def voice
    respond_with do |format|
      format.xml
    end
  end

  private

  def publish_order
    PrivatePub.publish_to("/restaurant/new_orders", "new_order_alert('#{@order.restaurant.id}')")
  end

  def send_order(order)
    email_order_to_restaurant_resources(order)
    if order.restaurant.can_fax?
      send_fax_to_restaurant(order)
    else
      make_call(order.restaurant)
    end
  end

  def email_order_to_restaurant_resources(order)
    order_reciept = render_to_string(:template => "carts/order_reciept", :locals => {:order => order}, :layout => false )
    UserMailer.new_order(order, order_reciept).deliver
  end

  def send_fax_to_restaurant(order)
    order_reciept = render_to_string(:template => "carts/order_reciept", :locals => {:order => order}, :layout => false )
    @fax = Phaxio.send_fax(to: order.restaurant.fax_number ,string_data_type: 'html', string_data: order_reciept )
    if @fax["success"]
      make_call(order.restaurant)
    else
      p "Fax number format is incorrect"
    end
  end

  def make_call(restaurant)
    unless Rails.env == "development"
      @client = Twilio::REST::Client.new APP_CONFIG["twilio-account-sid"], APP_CONFIG["twilio-auth-token"]
      @call = @client.account.calls.create(:from => '+17189253361',:to => restaurant.phone_number, :url => voice_carts_url, :method => :get)
    end
  end

  def send_confirm_email_to_customer
    UserMailer.order_confirmation(current_user.email).deliver
  end
end
