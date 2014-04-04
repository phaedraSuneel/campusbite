class ApplicationController < ActionController::Base
	before_filter :check_admin
	before_filter :check_status

	rescue_from CanCan::AccessDenied do |exception|
	  redirect_to root_url, :notice => "You are not authorize for this action"
	end	
	protect_from_forgery


  def check_admin
		if params[:controller] == 'admin'
		  unless current_user.user_admin?
		    return redirect_to "/"
		  end
		end
	end
  def check_status
    if user_signed_in? && !cookies[:cart_token].blank?
      @cookie_cart=Cart.find_by_token(cookies[:cart_token])
      unless current_user.carts.blank?
        @user_cart=current_user.carts.find_by_token(cookies[:cart_token])

        if !@cookie_cart.blank?
          @cookie_cart.cart_menu_items.each  do |item|
            item.cart_id = @user_cart.id
            item.save
          end
          @cookie_cart.destroy
          cookies.delete :cart_token
        end
      else
        @cookie_cart.user_id = current_user.id
        @cookie_cart.token = nil
        @cookie_cart.save
        cookies.delete :cart_token
      end
    end
  end
end