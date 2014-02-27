class MenuItem < ActiveRecord::Base

  belongs_to :menu_category
  has_many :orders, through: :menu_item_orders
  has_many :carts, through: :cart_menu_items
  has_many :cart_menu_items
  has_many :menu_item_orders
  attr_accessible :item_name, :menu_category_id, :price, :short_description, :description
  
end
