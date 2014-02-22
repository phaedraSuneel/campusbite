class Menu < ActiveRecord::Base
  
  belongs_to :restaurant
  has_many :menu_categories
  
  attr_accessible :restaurant_id

  accepts_nested_attributes_for :menu_categories

end
