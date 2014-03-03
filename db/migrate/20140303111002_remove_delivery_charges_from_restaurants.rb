class RemoveDeliveryChargesFromRestaurants < ActiveRecord::Migration
  def up
  	remove_column :restaurants, :delivery_charges
  end

  def down
  end
end
