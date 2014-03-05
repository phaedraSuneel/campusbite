class CartMenuItem < ActiveRecord::Base
  belongs_to :cart
  belongs_to :menu_item
  belongs_to :menu_item_proptery
  attr_accessible :cart_id, :menu_item_id, :menu_item_property_id, :instruction,:quantity
end
