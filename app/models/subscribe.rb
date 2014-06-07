class Subscribe < ActiveRecord::Base
  attr_accessible :email, :name, :school_name
  validates_uniqueness_of :email

  def self.apply_search_filter(data,key_word)
    search_keyword = ["%",key_word,"%"].join('')
    return data.where('name like ? OR school_name like ? OR email like ?', search_keyword, search_keyword, search_keyword)
  end

end
