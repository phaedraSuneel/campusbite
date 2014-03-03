class CreateRestaurantInfos < ActiveRecord::Migration
  def change
    create_table :restaurant_infos do |t|
      t.text :about_restaurant
      t.boolean :is_pick_up
      t.boolean :is_delivery
      t.boolean :is_featured
      t.float :min_order
      t.integer :restaurant_id

      t.timestamps
    end
  end
end
