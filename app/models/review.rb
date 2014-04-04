class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :restaurant	
  attr_accessible :description, :rating, :restaurant_id, :user_id
  after_save :update_avg_rating

  def update_avg_rating
  	self.restaurant.update_attributes(:avg_rating => self.restaurant.avarage_rating)
  end

end
