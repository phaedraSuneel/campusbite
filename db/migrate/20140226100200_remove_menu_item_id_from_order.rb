class RemoveMenuItemIdFromOrder < ActiveRecord::Migration
  def up
  	remove_column :orders, :menu_item_id
  	remove_column :orders, :quantity
  	add_column :menu_item_orders, :quantity, :integer
  end

  def down
  end
end
