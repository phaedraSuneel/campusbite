class CartMenuItemGroupItem < ActiveRecord::Base
  
  belongs_to :cart_menu_item
  belongs_to :group_item

  attr_accessible :cart_menu_item_id, :group_item_id

end
