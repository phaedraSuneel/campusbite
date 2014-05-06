class Restaurant::DashboardController < ApplicationController
  
  def index
    @restaurant = current_user.restaurant
    @orders = @restaurant.orders.order("created_at desc")
    @customers = (@restaurant.customers).uniq.sort {|a,b| b.total_order(@restaurant) <=> a.total_order(@restaurant)}
    @last_week_orders = @restaurant.last_week_orders
    @last_month_orders = @restaurant.last_month_orders
    @reviews = @restaurant.reviews
  end

  def contact_admin
    @user = current_user
    if  UserMailer.restaurant_admin(params[:contactus]).deliver
      flash[:notice] = "Successfully email sent"
      redirect_to restaurant_dashboard_index_path(:anchor => "sent")
   else 
      flash[:warning] = "Failed to send you email"
      redirect_to :back
   end
  end
end
