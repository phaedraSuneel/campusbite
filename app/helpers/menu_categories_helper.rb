module MenuCategoriesHelper
	def set_menu_category_path(menu, menu_category)
		menu_category.new_record? ? admin_menu_menu_categories_path(menu,menu_category) : admin_menu_menu_category_path(menu,menu_category)
	end
end
