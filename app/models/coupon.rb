class Coupon < ActiveRecord::Base
  has_and_belongs_to_many :schools
  attr_accessible :amount, :code, :end_date, :max_use, :max_user, :min_amount, :start_date, :unit, :school_ids
  accepts_nested_attributes_for :schools

  def self.apply_search_filter(data,key_word)
  	search_keyword = ["%",key_word,"%"].join('')
  	return data.where('amount like ? OR code like ? OR max_user like ? OR max_use like ?', search_keyword, search_keyword, search_keyword, search_keyword)
  end
end
