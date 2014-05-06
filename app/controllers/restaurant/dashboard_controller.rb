class Restaurant::DashboardController < ApplicationController
  
  def index
    @restaurant = current_user.restaurant
    @orders = @restaurant.orders.order("created_at desc")
    @customers = (@restaurant.customers).uniq.sort {|a,b| b.total_order(@restaurant) <=> a.total_order(@restaurant)}
    @last_week_orders = @restaurant.last_week_orders
    @last_month_orders = @restaurant.last_month_orders
    @reviews = @restaurant.reviews
    @chart_orders =  @restaurant.orders.group_by{|o| o[:created_at].to_date}
    @chart_data = []
    @chart_orders.each do |key, value|
      total_order = 0
      value.each do |order|
        total_order+= order.total_bill
      end
      @chart_data.push(["#{key}", "#{total_order}".to_f])
    end
  end

  def new_orders
    @restaurant = current_user.restaurant
    @orders = @restaurant.orders.where(:status => "pending").order("created_at desc")
  end

  def confirm_orders
    @restaurant = current_user.restaurant
    @orders = @restaurant.orders.where(:status => "confirm").order("created_at desc")
  end

  def all_orders
    @restaurant = current_user.restaurant
    @orders = @restaurant.orders.order("created_at desc")
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
