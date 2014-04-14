module RestaurantOffersHelper
	def set_restaurant_offer_url(restaurant_offer)
		restaurant_offer.new_record? ? admin_restaurant_offers_path(restaurant_offer) : admin_restaurant_offer_path(restaurant_offer)
	end
end
