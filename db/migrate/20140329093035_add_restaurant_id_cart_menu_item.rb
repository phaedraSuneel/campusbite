class AddRestaurantIdCartMenuItem < ActiveRecord::Migration
  def up
  	add_column :cart_menu_items, :restaurant_id, :integer
  	add_column :menu_item_orders, :restaurant_id, :integer
  	remove_column :orders, :restaurant_id
  end

  def down
  	remove_column :cart_menu_items, :restaurant_id
  	remove_column :menu_item_orders, :restaurant_id
  	add_column :orders, :restaurant_id, :integer
  end
end
