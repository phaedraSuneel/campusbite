class DashboardController < ApplicationController
	
	def account
		@favorites_restaurants = current_user.favorites.page(params[:page]).per(10)
	end

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

	def add_user_address
		@user = current_user
		@address = current_user.addresses.build(params[:address])
		if @address.save
			flash[:notice] = "Address successfully created"
			redirect_to :back
		else
			flash[:warning] = "Something wrong address not created"
			redirect_to :back
		end
	end 

	def building_field
    @school = School.find(params[:id])
    @builings = @school.buildings
    render(:partial => "/dashboard/get_building_field", :locals => {:@builings => @builings })
  end

  def delete_address
  	@address = Address.find params[:id]
  	@address.destroy
  	render :text => 'successfully'
  end

  def edit_user_address
  	@address = Address.find(params[:id])
  end 
end
