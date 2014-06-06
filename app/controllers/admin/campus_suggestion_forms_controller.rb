class Admin::CampusSuggestionFormsController < ApplicationController
	def index
		@campus_requests = CampusSuggestion.all
		respond_to do |format|
			format.json do 
				return render :json =>  { :data => @campus_requests.collect{|a| [a.first_name, a.last_name, a.email, a.campus_name, a.street_address,a.city, a.state,a.zip_code, a.comment]} }
			end
			format.html
		end
	end
end