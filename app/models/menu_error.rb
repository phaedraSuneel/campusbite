class MenuError < ActiveRecord::Base
  attr_accessible :email, :is_viewed, :note, :restaurant_name, :school_name

  def self.apply_search_filter(data,key_word)
    search_keyword = ["%",key_word,"%"].join('')
    return data.where('restaurant_name like ? OR email like ? OR school_name like ? OR email like ?', search_keyword, search_keyword, search_keyword, search_keyword)
  end
  def created_at_date
    self.created_at.strftime('%e %B, %Y')
  end

  def created_at_time
    self.created_at.strftime('%I:%M%p')
  end
end
