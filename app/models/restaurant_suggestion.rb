class RestaurantSuggestion < ActiveRecord::Base
  attr_accessible :campus_name, :email, :first_name, :is_viewed, :last_name, :phone_number_1, :phone_number_2, :phone_number_3, :restaurant_name_1, :restaurant_name_2, :restaurant_name_3
  validates_presence_of :first_name, :last_name, :email, :campus_name
end
