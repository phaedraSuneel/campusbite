class RemoveIsDeliveryColFromRestaurantInfo < ActiveRecord::Migration
  def up
  	remove_column :restaurant_infos, :is_delivery
  end

  def down
  	add_column :restaurant_infos, :is_delivery, :boolean
  end
end
