class AddAddressTypeRequestTimeIntToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :delievery_address, :string
    add_column :orders, :order_type, :string
    add_column :orders, :request_time, :string
  end
end
