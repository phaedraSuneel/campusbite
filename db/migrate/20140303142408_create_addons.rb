class CreateAddons < ActiveRecord::Migration
  def change
    create_table :addons do |t|
      t.string :name
      t.float :count
      t.integer :restaurant_id
      t.integer :menu_category_id

      t.timestamps
    end
  end
end
