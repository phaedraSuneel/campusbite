class CreateBankInfos < ActiveRecord::Migration
  def change
    create_table :bank_infos do |t|
      t.string :bank_name
      t.string :bank_account_number
      t.string :routine_number
      t.string :swift_code
      t.integer :restaurant_id

      t.timestamps
    end
  end
end
