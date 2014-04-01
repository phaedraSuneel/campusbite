class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.datetime :expiration_date
      t.integer :user_id
      t.string :cardholder_name
      t.string :token
      t.integer :masked_number
      t.integer :unique_number_identifier
      t.string :card_type

      t.timestamps
    end
  end
end
