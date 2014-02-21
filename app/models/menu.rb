class Menu < ActiveRecord::Base
  belongs_to :restaurant
  has_many :menu_categories, :dependent => :destory
  attr_accessible :restaurant_id

end
