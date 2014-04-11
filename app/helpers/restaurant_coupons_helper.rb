module RestaurantCouponsHelper
	def set_restaurant_coupon_url(restaurant_coupon)
		restaurant_coupon.new_record? ? admin_restaurant_coupons_path(restaurant_coupon) : admin_restaurant_coupon_path(restaurant_coupon)
	end
end
