class Subscribe < ActiveRecord::Base
  attr_accessible :email, :name, :school_name
  validates_uniqueness_of :email
  validates_presence_of :email

  def self.apply_search_filter(data,key_word)
    search_keyword = ["%",key_word,"%"].join('')
    return data.where('name like ? OR school_name like ? OR email like ?', search_keyword, search_keyword, search_keyword)
  end

  def created_at_date
    self.created_at.strftime('%e %B, %Y')
  end

  def created_at_time
    self.created_at.strftime('%I:%M%p')
  end

end
