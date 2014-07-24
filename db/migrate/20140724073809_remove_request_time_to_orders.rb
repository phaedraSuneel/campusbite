class RemoveRequestTimeToOrders < ActiveRecord::Migration
  def up
    remove_column :orders, :request_time
  end

  def down
    add_column :orders, :request_time, :string
  end
end
