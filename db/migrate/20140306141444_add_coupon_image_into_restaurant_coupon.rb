class AddCouponImageIntoRestaurantCoupon < ActiveRecord::Migration
  def self.up
    add_column :restaurant_coupons, :coupon_image_file_name, :string
    add_column :restaurant_coupons, :coupon_image_content_type, :string
    add_column :restaurant_coupons, :coupon_image_file_size, :integer
  end
  def self.down
    remove_column :restaurant_coupons, :coupon_image_file_name
    remove_column :restaurant_coupons, :coupon_image_content_type
    remove_column :restaurant_coupons, :coupon_image_file_size
  end
end
