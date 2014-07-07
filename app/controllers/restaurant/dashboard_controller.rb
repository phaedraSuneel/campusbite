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

  def order
    authorize! :read, Order
    @order = Order.find(params[:id])
  end

  def print_order
    @order = Order.find(params[:id])
    respond_to do |format|
      format.html { render "print_order", :layout => false  }
    end
  end

  def new_orders
    authorize! :read, Order
    @restaurant = current_user.restaurant
    @orders = @restaurant.orders.where(:status => "pending").order("created_at desc")
  end

  def confirm_orders
    authorize! :read, Order
    @restaurant = current_user.restaurant
    @orders = @restaurant.orders.where(:status => "confirm").order("created_at desc")
  end

  def all_orders
    authorize! :read, Order
    @restaurant = current_user.restaurant
    @orders = @restaurant.orders.order("created_at desc")
  end

  def allOrders
    @restaurant = current_user.restaurant
    @orders = @restaurant.orders.order("created_at desc")
    all_orders = @orders.collect{|a| {:order_id => a.id.to_s, :order_date => a.created_at.strftime("%e %B, %Y %I:%M%P"), :order_type => a.order_type,  :order_time => a.request_time, :order_customer_name => a.user.name, :order_total => a.total_bill.to_s, :order_status => a.status, :order_action => ""}}
    render :json => {:aaData => all_orders}
  end

  def reports
    @restaurant = current_user.restaurant
    @orders =  @restaurant.orders.order("created_at desc")
  end

  def schedule_reports
    @restaurant = current_user.restaurant
    @orders = @restaurant.last_week_orders
  end



  def confirm_order
    order = Order.find(params[:id])
    if order.update_attributes(:status => "confirm")
      flash[:notice] = "Order Successfully Confirmed"
      redirect_to :back
    else
      flash[:warning] = "Order Failed Confirmed"
      redirect_to :back
    end
  end

  def cancel_order
    order = Order.find(params[:id])
    if order.update_attributes(:status => "reject")
      flash[:notice] = "Order Successfully Cancel"
      redirect_to :back
    else
      flash[:warning] = "Order Fail Cancel"
      redirect_to :back
    end
  end

  def support
    @restaurant = current_user.restaurant
  end

  def general_report
    @restaurant = current_user.restaurant
    @orders =  @restaurant.orders.order("created_at desc")
    render general_report_restaurant_dashboard_index_path, :layout => false
  end

  def schedule_orders_report
    @restaurant = current_user.restaurant
    @orders = @restaurant.last_week_orders
    render schedule_orders_report_restaurant_dashboard_index_path, :layout => false
  end

  def confirm_orders_report
    @restaurant = current_user.restaurant
    @orders = @restaurant.orders.where(:status => "confirm").order("created_at desc")
    render confirm_orders_report_restaurant_dashboard_index_path, :layout => false
  end

  def all_orders_report
    @restaurant = current_user.restaurant
    @orders = @restaurant.orders.order("created_at desc")
    render all_orders_report_restaurant_dashboard_index_path, :layout => false
  end

  def contact_admin
    @user = current_user
    @contact_us = Support.new(params[:contactus])
    if  @contact_us.save
      UserMailer.restaurant_admin(@user,params[:contactus]).deliver
      flash[:notice] = "Successfully email sent"
      redirect_to support_restaurant_dashboard_index_path(:anchor => "sent")
   else
      flash[:warning] = "Failed to send you email"
      redirect_to :back
   end
  end

  def settings
    @user = current_user
    @restaurant = current_user.restaurant
  end

  def toggle_alert
    user = current_user
    user.mute = user.mute? ?  false : true
    user.save
    render :text => !user.mute
  end

end
