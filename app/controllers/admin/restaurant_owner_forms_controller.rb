class Admin::RestaurantOwnerFormsController < ApplicationController
	def index
		page = params[:draw].nil? ? 1 : params[:draw].to_i
		limit = params[:length].to_i
		offset = params[:start].to_i
		@restaurant_requests = JoinUs.offset(offset).limit(limit)
		respond_to do |format|
			format.json do 
				return render :json =>  {draw: page,  recordsTotal: JoinUs.count,  recordsFiltered: JoinUs.count , :data => @restaurant_requests.collect{|a| [a.first_name, a.last_name, a.restaurant_name, a.email, a.phone_number,a.zip_code, a.comment]} }
			end
			format.html
		end
	end
end