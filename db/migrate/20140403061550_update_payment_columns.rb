class UpdatePaymentColumns < ActiveRecord::Migration
  def change
  	rename_column :payments, :transition_id, :transaction_id
  	rename_column :payments, :transition_at, :transaction_at
  	rename_column :payments, :transition_status, :transaction_status
  end
end
