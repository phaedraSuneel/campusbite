class CartMenuItem < ActiveRecord::Base
  belongs_to :cart
  belongs_to :menu_item
  belongs_to :restaurant
  has_many :group_items, through: :cart_menu_item_group_items
  has_many :cart_menu_item_group_items, :dependent => :destroy
  attr_accessible :cart_id, :menu_item_id, :menu_item_property_id, :instruction,:quantity, :restaurant_id, :group_item_ids


  def property_name(id)
  	MenuItemProperty.find(id).name
  end

  def property_price(id)
  	MenuItemProperty.find(id).price
  end

end
