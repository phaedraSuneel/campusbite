class CreateGroupItemMenuItemOrders < ActiveRecord::Migration
  def change
    create_table :group_item_menu_item_orders do |t|
      t.integer :menu_item_order_id
      t.integer :group_item_id

      t.timestamps
    end
  end
end
