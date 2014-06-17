class Admin::PermissionsController < ApplicationController
	
	def index
		@roles = Role.all
	end

	def assign_permission
		@role = Role.where(id: params[:id]).first
	end

	def create_permission
		@role = Role.where(id: params[:id]).first
		respond_to do |format|
			if @role.update_attributes(params[:role])
				format.html { redirect_to admin_permissions_path, notice: 'Roles was successfully assigned.' }
			else
				format.html { render action: "assign_permission", warning: 'Roles was failed assigned.' }
			end
		end			
		
	end

end
