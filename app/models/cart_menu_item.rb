class CartMenuItem < ActiveRecord::Base
  belongs_to :cart
  belongs_to :menu_item
  attr_accessible :cart_id, :menu_item_id, :menu_item_property_id, :instruction,:quantity

  def property_name(id)
  	MenuItemProperty.find(id).name
  end

  def property_price(id)
  	MenuItemProperty.find(id).price
  end
end
