class CreateMenuCategories < ActiveRecord::Migration
  def change
    create_table :menu_categories do |t|
      t.string :category_name
      t.integer :menu_id

      t.timestamps
    end
  end
end
