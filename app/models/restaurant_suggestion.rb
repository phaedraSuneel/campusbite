class RestaurantSuggestion < ActiveRecord::Base
  attr_accessible :campus_name, :email, :first_name, :is_viewed, :last_name, :phone_number_1, :phone_number_2, :phone_number_3, :restaurant_name_1, :restaurant_name_2, :restaurant_name_3
  validates_presence_of :first_name, :last_name, :email, :campus_name

  def self.apply_search_filter(data,key_word)
    search_keyword = ["%",key_word,"%"].join('')
    return data.where('first_name like ? OR last_name like ? OR campus_name like ? OR email like ? OR restaurant_name_1 like ? OR restaurant_name_2 like ? OR restaurant_name_3 like ? OR phone_number_1 like ? OR phone_number_2 like ? OR phone_number_3 like ?', search_keyword, search_keyword, search_keyword, search_keyword, search_keyword, search_keyword, search_keyword, search_keyword, search_keyword, search_keyword)
  end

  def created_at_date
    self.created_at.strftime('%e %B, %Y')
  end

  def created_at_time
    self.created_at.strftime('%I:%M%p')
  end

end
