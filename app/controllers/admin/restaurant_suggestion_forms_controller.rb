class Admin::RestaurantSuggestionFormsController < ApplicationController
	def index
		page = params[:draw].nil? ? 1 : params[:draw].to_i
		limit = params[:length].to_i
		offset = params[:start].to_i
		@restaurant_requests = RestaurantSuggestion.offset(offset).limit(limit)
		respond_to do |format|
			format.json do 
				return render :json =>  {draw: page,  recordsTotal: RestaurantSuggestion.count,  recordsFiltered: RestaurantSuggestion.count , :data => @restaurant_requests.collect{|a| [a.first_name, a.last_name, a.email, a.campus_name, a.restaurant_name_1,a.phone_number_1, a.restaurant_name_2,a.phone_number_2, a.restaurant_name_3, a.phone_number_3]} }
			end
			format.html
		end
	end
end