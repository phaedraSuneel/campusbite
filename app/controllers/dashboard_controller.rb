class DashboardController < ApplicationController
	def change_user_information
		@user = current_user
		if @user.update_attributes(params[:user])
			flash[:notice] = "User account successfully updated"
			redirect_to :back
		else
			flash[:waring] = "User account was not updated"
			redirect_to :back
		end
	end
end
