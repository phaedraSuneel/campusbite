class CreateCoupons < ActiveRecord::Migration
  def change
    create_table :coupons do |t|
      t.string :code
      t.float :amount
      t.string :unit
      t.float :min_amount
      t.datetime :start_date
      t.datetime :end_date
      t.integer :max_user
      t.integer :max_use

      t.timestamps
    end
  end
end
