class ContactUs < ActiveRecord::Base
  attr_accessible :email, :is_viewed, :message, :name, :subject
   validates_presence_of :email, :name, :subject
   def self.apply_search_filter(data,key_word)
    search_keyword = ["%",key_word,"%"].join('')
    return data.where('name like ? OR message like ? OR subject like ? OR email like ?', search_keyword, search_keyword, search_keyword, search_keyword)
  end
end
