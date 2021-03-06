class ApplicationController < ActionController::Base
  before_filter :check_admin
	before_filter :check_status
	layout :change_layout

	rescue_from CanCan::AccessDenied do |exception|
	  redirect_to restaurant_dashboard_index_path , :notice => "You are not authorize for this action"
	end
	protect_from_forgery

	def change_layout
    #cookies.delete :guest_token
    if current_user
      current_user.admin_restaurant? ? 'admin_restaurant' : (current_user.user_admin? ? 'super_admin' : 'application')
    else
      'application'
    end
  end

  def check_admin
    unless current_user.blank?
  		if params[:controller] == 'welcome'
        if current_user.admin_restaurant?
          return redirect_to restaurant_dashboard_index_path
        end
        if current_user.user_admin?
          return redirect_to admin_dashboard_index_path
        end
      end
    end
	end

  def check_status
    if user_signed_in? && !cookies[:cart_token].blank?
      @cookie_cart=Cart.find_by_token(cookies[:cart_token])
      @cookie_cart.user_id = current_user.id
      @cookie_cart.token = nil
      @cookie_cart.save
      cookies.delete :cart_token
    end
  end

  def after_sign_in_path_for(resource)

    if resource.admin_restaurant?
      restaurant_dashboard_index_path
    elsif resource.user_admin?
      admin_dashboard_index_path
    else
      "/"
    end
  end

  def after_sign_out_path_for(resource)
    remove_cart
    '/'
  end

  def remove_cart
    current_user.carts.destroy_all
  end
end