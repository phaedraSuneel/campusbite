class AddTipToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :tip, :float, :default => 0.0
  end
end
