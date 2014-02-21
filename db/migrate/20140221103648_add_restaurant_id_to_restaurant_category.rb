class AddRestaurantIdToRestaurantCategory < ActiveRecord::Migration
  def change
    add_column :restaurant_categories, :restaurant_id, :integer
  end
end
