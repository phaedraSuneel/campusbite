class Admin::PermissionsController < ApplicationController
	
	def index
		@roles = Role.all
	end

	def roles
		@user_role = UserRole.all
	end
end
