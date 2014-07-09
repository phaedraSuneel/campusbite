class RestaurantCoupon < ActiveRecord::Base
  versioned
	belongs_to :restaurant
  attr_accessible :expiration_date, :restaurant_id, :coupon_image, :status, :code, :charges, :max_use
  has_attached_file :coupon_image,
                    :styles => {
                        :thumb => "75x75#",
                        :small_thumb => "27x27#",
                        :small => "150x150#",
                        :medium => "500x500>",
                        :large  => "635x220"
                    },
                    :default_url => '/assets/default.png'
  validates_attachment_content_type :coupon_image, :content_type => /\Aimage\/.*\Z/

  def limit_avaible?
    max_use == 0 ?  false : true
  end

  def model_name
    "RestaurantCoupon"
  end

  def descrease_limit
    self.max_use = self.max_use -  1
    self.save
  end

end
