class RemovePaymentMethodFromOrders < ActiveRecord::Migration
  def change
  	add_column :orders, :method_type, :string
  end	
end
