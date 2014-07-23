class CampusSuggestion < ActiveRecord::Base
  attr_accessible :campus_name, :city, :comment, :email, :first_name, :is_viewed, :last_name, :state, :street_address, :zip_code
  validates_presence_of :first_name, :last_name, :email, :campus_name, :state, :zip_code

  def self.apply_search_filter(data,key_word)
    search_keyword = ["%",key_word,"%"].join('')
    return data.where('first_name like ? OR last_name like ? OR campus_name like ? OR state like ? OR zip_code like ? OR city like ? OR comment like ? OR email like ? ', search_keyword, search_keyword, search_keyword, search_keyword, search_keyword, search_keyword, search_keyword, search_keyword)
  end

  def created_at_date
    self.created_at.strftime('%e %B, %Y')
  end

  def created_at_time
    self.created_at.strftime('%I:%M%p')
  end

end
