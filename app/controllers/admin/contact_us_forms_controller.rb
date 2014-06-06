class Admin::ContactUsFormsController < ApplicationController
	def index
		@contact_requests = ContactUs.all
		respond_to do |format|
			format.json do 
				return render :json =>  { :data => @contact_requests.collect{|a| [a.name,a.email,a.subject,a.message]} }
			end
			format.html
		end
	end
end
