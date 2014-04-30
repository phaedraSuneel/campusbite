class AddDeltaToRestaurants < ActiveRecord::Migration
  def change
    add_column :restaurants, :delta, :boolean, :default => true, :null => false
    add_index  :restaurants, :delta
  end
end
