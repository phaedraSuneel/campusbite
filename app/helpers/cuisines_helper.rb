module CuisinesHelper
	def set_cuisine_path(cuisine)
		cuisine.new_record? ? admin_cuisines_path(cuisine) : admin_cuisine_path(cuisine)
	end
end
