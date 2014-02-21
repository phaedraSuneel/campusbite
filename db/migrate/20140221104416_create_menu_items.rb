class CreateMenuItems < ActiveRecord::Migration
  def change
    create_table :menu_items do |t|
      t.string :item_name
      t.integer :menu_category_id
      t.float :price
      t.string :short_description

      t.timestamps
    end
  end
end
