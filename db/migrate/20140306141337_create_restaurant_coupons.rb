class CreateRestaurantCoupons < ActiveRecord::Migration
  def change
    create_table :restaurant_coupons do |t|
      t.integer :restaurant_id
      t.datetime :expiration_date

      t.timestamps
    end
  end
end
