class RestaurantSchool < ActiveRecord::Base
  belongs_to :restaurant
  belongs_to :school
  attr_accessible :restaurant_id, :school_id
end
