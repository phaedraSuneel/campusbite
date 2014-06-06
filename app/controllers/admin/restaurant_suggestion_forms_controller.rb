class Admin::RestaurantSuggestionFormsController < ApplicationController
	def index
		@restaurant_requests = RestaurantSuggestion.all
		respond_to do |format|
			format.json do 
				return render :json =>  { :data => @restaurant_requests.collect{|a| [a.first_name, a.last_name, a.email, a.campus_name, a.restaurant_name_1,a.phone_number_1, a.restaurant_name_2,a.phone_number_2, a.restaurant_name_3, a.phone_number_3]} }
			end
			format.html
		end
	end
end