class CreateAddonSubcategories < ActiveRecord::Migration
  def change
    create_table :addon_subcategories do |t|
      t.string :name
      t.integer :addon_id

      t.timestamps
    end
  end
end
