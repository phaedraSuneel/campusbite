class AddFlagToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :flag, :boolean, :default => false
  end
end
