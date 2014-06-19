class GroupItem < ActiveRecord::Base

  belongs_to :group
  has_many :cart_menu_items, through: :cart_menu_item_group_items
  has_many :menu_item_orders, through: :group_item_menu_item_orders
  has_many :cart_menu_item_group_items
  has_many :group_item_menu_item_orders

  
  attr_accessible :group_id, :is_pizza, :name, :price

  after_destroy :remove_associations

  def remove_associations
    self.cart_menu_item_group_items.clear
    self.group_item_menu_item_orders.clear
  end
  
end
