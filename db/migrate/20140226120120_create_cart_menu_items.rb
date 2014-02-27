class CreateCartMenuItems < ActiveRecord::Migration
  def change
    create_table :cart_menu_items do |t|
      t.integer :cart_id
      t.integer :menu_item_id
      t.integer :quantity

      t.timestamps
    end
  end
end
