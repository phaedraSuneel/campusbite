class RestaurantCategory < ActiveRecord::Base
  belongs_to :restaurant
  attr_accessible :category_name, :restaurant_id

end
