class AddOnlineDiscountToRestaurants < ActiveRecord::Migration
  def change
    add_column :restaurants, :online_discount, :integer
  end
end
