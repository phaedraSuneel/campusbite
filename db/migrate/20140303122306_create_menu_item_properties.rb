class CreateMenuItemProperties < ActiveRecord::Migration
  def change
    create_table :menu_item_properties do |t|
      t.string :name
      t.float :price
      t.integer :menu_item_id

      t.timestamps
    end
  end
end
