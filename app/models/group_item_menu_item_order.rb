class GroupItemMenuItemOrder < ActiveRecord::Base
  belongs_to :group_item
  belongs_to :menu_item_order
  attr_accessible :group_item_id, :menu_item_order_id
end
