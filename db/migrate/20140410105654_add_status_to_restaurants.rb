class AddStatusToRestaurants < ActiveRecord::Migration
  def change
    add_column :restaurants, :status, :string, :default => "completed"
  end
end
