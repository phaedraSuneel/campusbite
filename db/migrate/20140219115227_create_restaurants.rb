class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :restaurant_name
      t.integer :restaurant_phone
      t.string :restaurant_website
      t.string :restaurant_street_address
      t.string :state
      t.string :city
      t.integer :zip_code
      t.text :about_restaurant
      t.boolean :is_pick_up
      t.boolean :is_deliver
      t.float :min_delivery
      t.time :delivery_eta

      t.timestamps
    end
  end
end
