class RestaurantInfo < ActiveRecord::Base

  has_many :restaurant_opening_closing_times ,  :dependent => :destroy
  belongs_to :restaurant
  attr_accessible :about_restaurant, :is_featured, :is_pick_up, :min_order, :restaurant_id, :logo, :sale_tax, :restaurant_opening_closing_times_attributes

  has_attached_file :logo,
                    :styles => {
                        :thumb => "75x75#",
                        :small_thumb => "27x27#",
                        :small => "150x150#",
                        :medium => "500x500>"
                    },
                    :default_url => '/assets/default.png'
  accepts_nested_attributes_for :restaurant_opening_closing_times
                    
  validates_attachment_content_type :logo, :content_type => /\Aimage\/.*\Z/
end
