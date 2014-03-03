class RestaurantOffer < ActiveRecord::Base
  belongs_to :restaurant
  attr_accessible :description, :offer_percentage, :offer_price, :restaurant_id, :valid_from, :valid_to
end
