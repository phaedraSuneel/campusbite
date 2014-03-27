class CartsController < ApplicationController

  def add_item
    menu_item = MenuItem.find(params[:cart][:menu_item_id])
    restaurant = menu_item.restaurant
    if restaurant.open? 
      @cart = User.get_cart(cookies[:cart_token],current_user)
      cookies[:cart_token] = @cart.token
      @cart_menu_item = @cart.cart_menu_items.new(params[:cart])
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

  def checkout
    if user_signed_in?
      @cart = current_user.cart
      unless @cart.blank?
        @order = Order.new params[:order]
        @order.user_id = current_user.id
        @order.save
        @cart.cart_menu_items.each do |item|
          @menu_item_order = MenuItemOrder.new :order_id => @order.id, :quantity => item.quantity 
          @menu_item_order.menu_item = item.menu_item
          @menu_item_order.save 
        end
        @cart.destroy
        flash[:notice] = 'Order was successfully created!'
        render :partial => "welcome/order_view_option"
      else
        render :partial => "welcome/menu_item_option" 
      end  
    else
      flash[:notice] = 'Before checkout please Sign In'
      render :partial => "welcome/get_user_information"
    end
  end
end