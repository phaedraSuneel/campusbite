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

	def change_user_password
		@user = current_user
		if @user.update_with_password(params[:user])
			flash[:notice] = "Password successfully updated"
			sign_in @user, :bypass => true
			redirect_to :back
		else
			flash[:warning] = "Password was not successfully updated"
			redirect_to :back
		end
	end
end
