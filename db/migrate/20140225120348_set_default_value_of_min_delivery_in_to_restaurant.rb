class SetDefaultValueOfMinDeliveryInToRestaurant < ActiveRecord::Migration
  def up
  	change_column :restaurants, :min_delivery, :float, :default => 0.0
  end

  def down
  	change_column :restaurants, :min_delivery, :float
  end
end
