class MenuError < ActiveRecord::Base
  attr_accessible :email, :is_viewed, :note, :restaurant_name, :school_name
  def self.apply_search_filter(data,key_word)
    search_keyword = ["%",key_word,"%"].join('')
    return data.where('restaurant_name like ? OR email like ? OR school_name like ? OR email like ?', search_keyword, search_keyword, search_keyword, search_keyword)
  end
end
