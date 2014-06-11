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

end
