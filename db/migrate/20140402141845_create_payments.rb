class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.integer :transition_id
      t.datetime :transition_at
      t.string :transition_status
      t.float :amount
      t.integer :user_id

      t.timestamps
    end
  end
end
