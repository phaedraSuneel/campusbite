class MenuItemProperty < ActiveRecord::Base
  belongs_to :menu_item
  has_one :cart_item
  has_one :menu_item_order
  attr_accessible :menu_item_id, :name, :price
end
