class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :restaurant	
  attr_accessible :description, :rating, :restaurant_id, :user_id, :status
  after_save :update_avg_rating

  def update_avg_rating
  	self.restaurant.update_attributes(:avg_rating => self.restaurant.avarage_rating)
  end

  def self.apply_search_filter(data,key_word)
    search_keyword = ["%",key_word,"%"].join('')
    return data.joins(:user).where('first_name like ? OR last_name like ? OR description like ? OR rating like ? OR status like ?'  , search_keyword, search_keyword, search_keyword, search_keyword, search_keyword)
  end

  def self.apply_order_filter(data, sorting_query)
  	return data.joins(:user).order(sorting_query)
  end
end
