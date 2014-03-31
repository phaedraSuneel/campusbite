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
        render :partial => "welcome/order_view_option"
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
    @order = Order.new params[:order]
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

end