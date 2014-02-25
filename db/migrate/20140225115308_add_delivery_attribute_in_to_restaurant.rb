class AddDeliveryAttributeInToRestaurant < ActiveRecord::Migration
  def change
    add_column :restaurants, :delivery_charges, :float, :default => 0.00
  end
end
