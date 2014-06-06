class Admin::SubscriberFormsController < ApplicationController
	
	def index
		@subscribe_requests = Subscribe.all
		respond_to do |format|
			format.json do 
				return render :json =>  { :data => @subscribe_requests.collect{|a| [a.name,a.email,a.school_name]} }
			end
			format.html
		end
	end

end