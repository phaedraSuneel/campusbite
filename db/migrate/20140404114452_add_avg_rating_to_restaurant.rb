class AddAvgRatingToRestaurant < ActiveRecord::Migration
  def change
    add_column :restaurants, :avg_rating, :integer, :default => 0
  end
end
