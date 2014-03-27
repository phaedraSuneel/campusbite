class AddRestaurantIdAndStatusIntoOrder < ActiveRecord::Migration
  def up
  	add_column :orders, :restaurant_id, :integer
  	add_column :orders, :status, :string
  end

  def down
  	remove_column :orders, :restaurant_id
  	remove_column :orders, :status 
  end
end
