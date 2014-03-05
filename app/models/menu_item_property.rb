class MenuItemProperty < ActiveRecord::Base
  belongs_to :menu_item
  has_one :cart_item
  has_one :order
  attr_accessible :menu_item_id, :name, :price
end
