class AddIsFeaturedToRestaurant < ActiveRecord::Migration
  def change
    add_column :restaurants, :is_featured, :boolean, :default => false
  end
end
