class AddOrderTypeToCart < ActiveRecord::Migration
  def change
    add_column :carts, :order_type, :string, :default => "delivery"
  end
end
