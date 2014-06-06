class Admin::SubscriberFormsController < ApplicationController
	
	def index
		page = params[:draw].nil? ? 1 : params[:draw].to_i
		limit = params[:length].to_i
		offset = params[:start].to_i
		@subscribe_requests = Subscribe.offset(offset).limit(limit)
		respond_to do |format|
			format.json do 
				return render :json =>  {draw: page,  recordsTotal: Subscribe.count,  recordsFiltered: Subscribe.count , :data => @subscribe_requests.collect{|a| [a.name,a.email,a.school_name]} }
			end
			format.html
		end
	end

end