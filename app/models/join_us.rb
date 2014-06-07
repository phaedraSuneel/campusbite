class JoinUs < ActiveRecord::Base
  attr_accessible :comment, :email, :first_name, :is_viewed, :last_name, :phone_number, :restaurant_name, :zip_code
  validates_presence_of :first_name, :last_name, :email, :phone_number

  def self.apply_search_filter(data,key_word)
    search_keyword = ["%",key_word,"%"].join('')
    return data.where('first_name like ? OR last_name like ? OR restaurant_name like ? OR phone_number like ? OR zip_code like ? OR email like ? OR comment like ? ', search_keyword, search_keyword, search_keyword, search_keyword, search_keyword, search_keyword, search_keyword)
  end
end
