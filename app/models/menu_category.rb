class MenuCategory < ActiveRecord::Base
  versioned
  belongs_to :menu
  has_many :menu_items, :dependent => :destroy
  has_many :addons, :dependent => :destroy
  attr_accessible :category_name, :menu_id, :status
  
end
