class CreateCardInfos < ActiveRecord::Migration
  def change
    create_table :card_infos do |t|
      t.integer :user_id
      t.integer :card_number
      t.datetime :expiration_date
      t.integer :cvv_code
      t.integer :billing_zipcode

      t.timestamps
    end
  end
end
