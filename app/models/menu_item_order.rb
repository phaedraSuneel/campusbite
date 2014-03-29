class MenuItemOrder < ActiveRecord::Base
  belongs_to :menu_item
  belongs_to :order
  belongs_to :restaurant
  attr_accessible :menu_item_id, :order_id, :quantity, :menu_item_property_id, :restaurant_id
end
