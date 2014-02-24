class RestaurantCategory < ActiveRecord::Base
  has_many :restaurants
  attr_accessible :category_name, :restaurant_id

end
