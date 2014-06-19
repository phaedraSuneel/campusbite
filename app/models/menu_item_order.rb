class MenuItemOrder < ActiveRecord::Base
  belongs_to :menu_item
  belongs_to :order
  belongs_to :restaurant
  has_many :group_items, through: :group_item_menu_item_orders
  has_many :group_item_menu_item_orders
  
  attr_accessible :menu_item_id, :order_id, :quantity, :menu_item_property_id, :restaurant_id, :instruction, :group_item_ids

  after_destroy :remove_associations

  def remove_associations
    self.group_item_menu_item_orders.clear
  end
end
