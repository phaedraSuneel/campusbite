class Admin::ContactUsFormsController < ApplicationController
	def index
		page = params[:draw].nil? ? 1 : params[:draw].to_i
		limit = params[:length].to_i
		offset = params[:start].to_i
		@contact_requests = ContactUs.offset(offset).limit(limit)
		respond_to do |format|
			format.json do 
				return render :json =>  {draw: page,  recordsTotal: ContactUs.count,  recordsFiltered: ContactUs.count , :data => @contact_requests.collect{|a| [a.name,a.email,a.subject,a.message]} }
			end
			format.html
		end
	end
end
