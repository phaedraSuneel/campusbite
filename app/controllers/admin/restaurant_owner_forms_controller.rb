class Admin::RestaurantOwnerFormsController < ApplicationController
	before_filter :set_view_all
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
		
		@restaurant_requests = JoinUs.offset(offset).limit(limit)
    
    unless params[:search].nil?
      @restaurant_requests = JoinUs.apply_search_filter(@restaurant_requests, params[:search][:value])
    end
    
		respond_to do |format|
			format.json do 
				return render :json =>  {draw: page,  recordsTotal: JoinUs.count,  recordsFiltered: JoinUs.count , :data => @restaurant_requests.collect{|a| [a.first_name, a.last_name, a.restaurant_name, a.email, a.phone_number,a.zip_code, a.comment]} }
			end
			format.html
		end
	end

  def set_view_all
    JoinUs.where(is_viewed: false).each do |s|
     s.is_viewed = true
     s.save 
    end
  end

	private

  def get_sort_attribute_name(column_number)
  
    case column_number
    when 0
      return "first_name"
    when 1
      return "last_name"
    when 2
      return "restaurant_name"
    when 3
      return "email"
    when 4
      return "phone_number"    
    else
      return "comment"
    end

  end
end