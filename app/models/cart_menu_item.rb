class CartMenuItem < ActiveRecord::Base
  belongs_to :cart
  belongs_to :menu_item
  attr_accessible :cart_id, :menu_item_id, :quantity
end
