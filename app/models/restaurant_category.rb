class RestaurantCategory < ActiveRecord::Base
  has_many :restaurants
  attr_accessible :category_name, :restaurant_id

  def self.apply_search_filter(data,key_word)
    search_keyword = ["%",key_word,"%"].join('')
    return data.where('category_name like ?', search_keyword)
  end

end
