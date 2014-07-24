class School < ActiveRecord::Base

  has_many :restaurants, through: :restaurant_schools
  has_many  :restaurant_schools, :dependent => :destroy
  has_many :buildings, :dependent => :destroy
  has_many :addresses
  has_and_belongs_to_many :coupons
  attr_accessible :branch_name, :school_address, :school_name, :delta, :restaurant_ids
  accepts_nested_attributes_for :restaurants
  accepts_nested_attributes_for :buildings

  def self.apply_search_filter(data,key_word)
    search_keyword = ["%",key_word,"%"].join('')
    return data.where('school_name like ?', search_keyword)
  end


end
