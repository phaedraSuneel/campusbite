module AddonsHelper
	def set_addon_path(addon)
		addon.new_record? ? admin_addons_path(addon) : admin_addon_path(addon)
	end
end
