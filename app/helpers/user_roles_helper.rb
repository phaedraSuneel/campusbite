module UserRolesHelper
	def set_user_role_url(user_role)
    user_role.new_record? ? admin_user_roles_path(user_role) : admin_user_role_path(user_role)
	end
end
