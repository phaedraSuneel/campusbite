class AddPayMethodToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :paymemt_method, :string
    add_column :orders, :card_id, :integer
    remove_column :orders, :card_info_id
  end
end
