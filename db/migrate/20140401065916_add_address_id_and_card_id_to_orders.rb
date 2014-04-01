class AddAddressIdAndCardIdToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :address_id, :integer
    add_column :orders, :card_info_id, :integer
    add_column :orders, :delivery_instruction, :text
  end
end
