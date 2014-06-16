class CreateTableCouponSchools < ActiveRecord::Migration
  def change
    create_table :coupons_schools do |t|
      t.integer :coupon_id
      t.integer :school_id
    end
  end    
end
