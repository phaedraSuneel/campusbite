class CreateCartMenuItemGroupItems < ActiveRecord::Migration
  def change
    create_table :cart_menu_item_group_items do |t|
      t.integer :cart_menu_item_id
      t.integer :group_item_id

      t.timestamps
    end
  end
end
