class Admin::RewardPointsController < ApplicationController

  def index
    page = params[:draw].nil? ? 1 : params[:draw].to_i
    limit = params[:length].to_i
    offset = params[:start].to_i

    unless params[:order].nil?
      col_number = params[:order]["0"]["column"].to_i
      order_by_type  = params[:order]["0"]["dir"]
    end

    attribute_name = get_sort_attribute_name(col_number)
    sorting_query = [attribute_name,order_by_type].join(' ')

    @customers = User.with_orders.offset(offset).limit(limit).order(sorting_query)
    unless params[:search].nil?
      @customers = User.apply_search_filter(@customers, params[:search][:value])
    end
    respond_to do |format|
      format.json do 
        return render :json =>  {draw: page,  recordsTotal: User.count,  recordsFiltered: User.count , :data => @customers.collect{|a| [a.name, a.points, "<a src='#{admin_reward_point_url(a)}'><span class='label label-sm label-success'> details </span></a>"]} }
      end
      format.html
    end
  end

  def show
    @user = User.where(id: params[:id]).first
    
    page = params[:draw].nil? ? 1 : params[:draw].to_i
    limit = params[:length].to_i
    offset = params[:start].to_i

    @orders = Order.with_user(@user).offset(offset).limit(limit)

    respond_to do |format|
      format.json do 
        return render :json => {draw: page,  recordsTotal: @user.orders.count,  recordsFiltered: @user.orders.count , :data => @orders.collect{|a| [a.restaurant_name, a.total_bill, a.created_at.strftime("%d %b %Y"), a.total_bill.floor*5 ]} }
      end
      format.html
    end

  end

  def update_reward_points
    @user = User.where(id: params[:id]).first
    if @user.update_attributes(:points => params[:points])
      redirect_to :back
    else 
      redirect_to :back
    end
  end

  private

  def get_sort_attribute_name(column_number)
  
    case column_number
    when 0
      return "first_name"
    else
      return "points"
    end
  end
end
