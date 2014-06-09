class Admin::DashboardController < ApplicationController

  def index
    @restaurants = Restaurant.all
    @orders =  @restaurants.collect(&:orders).flatten
    @pending_orders = @orders.select{|a| a.status == 'pending'}
    @completed_orders = @orders.select {|a| a.status == 'confirm'}
    @rejected_orders = @orders.select{|a| a.status == 'reject'}

    @top_restaurants = @restaurants.sort {|a,b| b.life_time_sale <=> a.life_time_sale}.take(10)
    @chart_orders =  @orders.group_by{|o| o[:created_at].to_date}
    @chart_data = []
    @chart_orders.each do |key, value|
      total_order = 0
      value.each do |order|
        total_order+= order.total_bill
      end
      @chart_data.push(["#{key}", "#{total_order}".to_f])
    end
  end
end