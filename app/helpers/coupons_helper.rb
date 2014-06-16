module CouponsHelper
	def set_coupon_url(coupon)
		coupon.new_record? ? admin_coupons_path(coupon) : admin_coupon_path(coupon)
	end
end
