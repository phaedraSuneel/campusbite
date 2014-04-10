module RestaurantsHelper
	def set_restaurant_url(school,restaurant)
		unless school.blank?
			restaurant.new_record? ? admin_school_restaurants_path(school,restaurant) : admin_school_restaurant_path(school,restaurant)
		else
			restaurant.new_record? ? admin_restaurants_path(restaurant) : admin_restaurant_path(restaurant)
		end	
	end
end
