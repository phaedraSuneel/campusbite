class Admin::RestaurantOwnerFormsController < ApplicationController
	def index
		@restaurant_requests = JoinUs.all
		respond_to do |format|
			format.json do 
				return render :json =>  { :data => @restaurant_requests.collect{|a| [a.first_name, a.last_name, a.restaurant_name, a.email, a.phone_number,a.zip_code, a.comment]} }
			end
			format.html
		end
	end
end