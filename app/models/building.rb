class Building < ActiveRecord::Base
  belongs_to :school
  has_many :addresses
  attr_accessible :building_name, :city, :school_id, :state, :street_adress, :zip_code

  def self.apply_search_filter(data,key_word)
  	search_keyword = ["%",key_word,"%"].join('')
    return data.where('building_name like ? OR city like ? OR street_adress like ? OR zip_code like ? OR state like ?', search_keyword, search_keyword, search_keyword, search_keyword, search_keyword)
  end

end
