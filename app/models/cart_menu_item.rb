class CartMenuItem < ActiveRecord::Base
  belongs_to :cart
  belongs_to :menu_item
  belongs_to :restaurant
  attr_accessible :cart_id, :menu_item_id, :menu_item_property_id, :instruction,:quantity, :restaurant_id

  def property_name(id)
  	MenuItemProperty.find(id).name
  end

  def property_price(id)
  	MenuItemProperty.find(id).price
  end
end
