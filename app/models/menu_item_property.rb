class MenuItemProperty < ActiveRecord::Base
  belongs_to :menu_item
  attr_accessible :menu_item_id, :name, :price
end
