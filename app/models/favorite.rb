class Favorite < ActiveRecord::Base
  belongs_to :restaurant
  belongs_to :user
  attr_accessible :restaurant_id, :user_id
end
