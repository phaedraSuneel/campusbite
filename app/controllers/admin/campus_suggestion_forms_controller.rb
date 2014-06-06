class Admin::CampusSuggestionFormsController < ApplicationController
	def index
		page = params[:draw].nil? ? 1 : params[:draw].to_i
		limit = params[:length].to_i
		offset = params[:start].to_i
		@campus_requests = CampusSuggestion.offset(offset).limit(limit)
		respond_to do |format|
			format.json do 
				return render :json =>  {draw: page,  recordsTotal: CampusSuggestion.count,  recordsFiltered: CampusSuggestion.count , :data => @campus_requests.collect{|a| [a.first_name, a.last_name, a.email, a.campus_name, a.street_address,a.city, a.state,a.zip_code, a.comment]} }
			end
			format.html
		end
	end
end