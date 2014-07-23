class Admin::RestaurantSuggestionFormsController < ApplicationController
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

		@restaurant_requests = RestaurantSuggestion.offset(offset).limit(limit)
    unless params[:search].nil?
      @restaurant_requests = RestaurantSuggestion.apply_search_filter(@restaurant_requests, params[:search][:value])
    end
		respond_to do |format|
			format.json do
				return render :json =>  {draw: page,  recordsTotal: RestaurantSuggestion.count,  recordsFiltered: RestaurantSuggestion.count , :data => @restaurant_requests.collect{|a| [a.first_name, a.last_name, a.email, a.campus_name, a.restaurant_name_1,a.phone_number_1, a.restaurant_name_2,a.phone_number_2, a.restaurant_name_3, a.phone_number_3, a.created_at_date, a.created_at_time, "<a src='#{delete_admin_restaurant_suggestion_form_url(a)}' data-confirm='Are you sure?' data-method = 'delete' rel='nofollow'><span class='label label-sm label-danger'> delete </span> </a>"]} }
			end
			format.html
		end
	end

  def set_view_all
    RestaurantSuggestion.where(is_viewed: false).each do |s|
     s.is_viewed = true
     s.save
    end
  end

  def delete
    RestaurantSuggestion.where(id: params[:id]).first.destroy
    redirect_to :back
  end

	private

  def get_sort_attribute_name(column_number)

  	case column_number
    when 0
      return "first_name"
    when 1
      return "last_name"
    when 2
      return "email"
    when 3
      return "campus_name"
    when 4
    	return "restaurant_name_1"
    when 5
    	return "phone_number_1"
    when 6
    	return "restaurant_name_2"
		when 7
			return "phone_number_2"
		when 8
			return "restaurant_name_3"
    else
      return "phone_number_3"
    end
  end

end
