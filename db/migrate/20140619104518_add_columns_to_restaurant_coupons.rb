class AddColumnsToRestaurantCoupons < ActiveRecord::Migration
  def change
    add_column :restaurant_coupons, :code, :string
    add_column :restaurant_coupons, :charges, :float
    add_column :restaurant_coupons, :max_use, :integer
  end
end
