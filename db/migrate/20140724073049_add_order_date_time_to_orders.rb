class AddOrderDateTimeToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :order_date_time, :datetime
  end
end
