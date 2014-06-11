module RestaurantCategoriesHelper
	def set_restaurant_category_path(restaurant_category)
		restaurant_category.new_record? ? admin_restaurant_categories_path(restaurant_category) : admin_restaurant_category_path(restaurant_category)
	end
end
