class RestaurantOpeningClosingTime < ActiveRecord::Base
  belongs_to :restaurant_info
  attr_accessible :closing_time, :day, :opening_time, :restaurant_info_id
end
