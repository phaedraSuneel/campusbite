class Support < ActiveRecord::Base
  attr_accessible :is_viewed, :message, :name, :phone_number, :restaurant_name

  def self.apply_search_filter(data,key_word)
    search_keyword = ["%",key_word,"%"].join('')
    return data.where('name like ? OR restaurant_name like ? OR phone_number like ? OR message like ?', search_keyword, search_keyword, search_keyword, search_keyword)
  end

  def created_at_date
    self.created_at.strftime('%e %B, %Y')
  end

  def created_at_time
    self.created_at.strftime('%I:%M%p')
  end

end
