class UpdateDeliveryEtaInToRestaurant < ActiveRecord::Migration
  def up
  	change_column :restaurants, :delivery_eta, :string
  end

  def down
  end
end
