class AddSecureCodeToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :secure_code, :string
  end
end
