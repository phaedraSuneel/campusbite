class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :restaurant	
  attr_accessible :description, :rating, :restaurant_id, :user_id
end
