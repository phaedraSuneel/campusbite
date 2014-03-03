class AddSaleTaxInToRestaurantInfo < ActiveRecord::Migration
  def change
    add_column :restaurant_infos, :sale_tax, :float
  end
end
