module MenuItemsHelper
	def set_menu_item_path(menu, menu_item)
		 menu_item.new_record? ? admin_menu_menu_items_path(menu, menu_item) : admin_menu_menu_item_path(menu, menu_item)
	end
end
