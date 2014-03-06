class RestaurantCoupon < ActiveRecord::Base
	belongs_to :restaurant
  attr_accessible :expiration_date, :restaurant_id, :coupon_image
  has_attached_file :coupon_image,
                    :styles => {
                        :thumb => "75x75#",
                        :small_thumb => "27x27#",
                        :small => "150x150#",
                        :medium => "500x500>"
                    },
                    :default_url => '/assets/default.png'
  validates_attachment_content_type :coupon_image, :content_type => /\Aimage\/.*\Z/ 
end
