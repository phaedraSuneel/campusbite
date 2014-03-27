class AddMenuItemPropertyIdInToMenuItemOrder < ActiveRecord::Migration
  def change
  	add_column :menu_item_orders, :menu_item_property_id, :integer
  end
end
