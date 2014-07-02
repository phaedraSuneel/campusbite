class Admin::OrdersController < ApplicationController

  def index
    @orders = Order.order('created_at desc')
  end

	def show
    @order = Order.where(id: params[:id]).first
	end

  def new_orders
    @orders = Order.where(:status => "pending").order("created_at desc")
  end

  def schedule_orders
    @orders = Order.schedule_orders
  end

  def cancel_orders
    @orders = Order.where(:status => "reject").order("created_at desc")
  end

  def orders_print
    @orders = Order.order('created_at desc')
    render orders_print_admin_orders_path, :layout => false
  end

  def new_orders_print
    @orders = Order.where(:status => "pending").order("created_at desc")
    render orders_print_admin_orders_path, :layout => false
  end

  def schedule_orders_print
    @orders = Order.schedule_orders
    render orders_print_admin_orders_path, :layout => false
  end

  def cancel_orders_print
    @orders = Order.where(:status => "reject").order("created_at desc")
    render orders_print_admin_orders_path, :layout => false
  end

  def confirm
    order = Order.find(params[:id])
    if order.update_attributes(:status => "confirm")
      flash[:notice] = "Order Successfully Confirmed"
      redirect_to :back
    else
      flash[:warning] = "Order Failed Confirmed"
      redirect_to :back
    end
  end

  def cancel
    order = Order.find(params[:id])
    if order.update_attributes(:status => "reject")
      flash[:notice] = "Order Successfully Cancel"
      redirect_to :back
    else
      flash[:warning] = "Order Fail Cancel"
      redirect_to :back
    end
  end

  def print
    @order = Order.find(params[:id])
    respond_to do |format|
      format.html { render "print", :layout => false  }
    end
  end

  def toggle_flag
    @order = Order.find(params[:id])
    @order.flag = @order.flag? ? false : true
    if @order.save
      flash[:notice] = "Order Successfully update"
      redirect_to :back
    else
      flash[:warning] = "Order Fail to update"
      redirect_to :back
    end
  end

  def email_receipt
    @order = Order.find(params[:id])
    order_reciept = render_to_string(:template => "carts/order_reciept", :locals => {:order => @order}, :layout => false )
    if UserMailer.new_order(@order, order_reciept).deliver
      flash[:notice] = "Receipt successfully sent to Restaurant"
      redirect_to :back
    else
      flash[:warning] = "Receipt Sending failed to Restaurant"
      redirect_to :back
    end
  end

  def fax_receipt
    @order = Order.find(params[:id])
    order_reciept = render_to_string(:template => "carts/order_reciept", :locals => {:order => @order}, :layout => false )
    @fax = Phaxio.send_fax(to: @order.restaurant.fax_number ,string_data_type: 'html', string_data: order_reciept )
    if @fax["success"]
      flash[:notice] = "Receipt successfully faxed Restaurant"
      redirect_to :back
    else
      flash[:warning] = "Receipt fax failed to Restaurant"
      redirect_to :back
    end
  end
end
