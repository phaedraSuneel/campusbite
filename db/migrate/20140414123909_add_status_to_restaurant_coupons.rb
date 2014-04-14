class AddStatusToRestaurantCoupons < ActiveRecord::Migration
  def change
    add_column :restaurant_coupons, :status, :string, :default => "completed"
  end
end
