class AddCouponChargesToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :coupon_id, :integer
    add_column :orders, :coupon_off, :string
  end
end
