class AddRankingToRestaurants < ActiveRecord::Migration
  def change
    add_column :restaurants, :ranking, :integer, :default => 0
  end
end
