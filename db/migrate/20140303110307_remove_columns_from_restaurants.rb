class RemoveColumnsFromRestaurants < ActiveRecord::Migration
  def up
  	remove_column :restaurants, :restaurant_name
  	remove_column :restaurants, :restaurant_phone
  	remove_column :restaurants, :restaurant_website
  	remove_column :restaurants, :restaurant_street_address
  	remove_column :restaurants, :state
  	remove_column :restaurants, :city
  	remove_column :restaurants, :zip_code
  	remove_column :restaurants, :about_restaurant
  	remove_column :restaurants, :is_pick_up
  	remove_column :restaurants, :min_delivery
  	remove_column :restaurants, :is_deliver
  	remove_column :restaurants, :delivery_eta
  	remove_column :restaurants, :is_featured
  end

  def down
  end
end
