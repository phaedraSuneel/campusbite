class GroupItem < ActiveRecord::Base

  belongs_to :group
  has_many :cart_menu_items, through: :cart_menu_item_group_items
  has_many :cart_menu_item_group_items, :dependent => :destroy
  
  attr_accessible :group_id, :is_pizza, :name, :price
end
