class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.string :token
      t.integer :user_id

      t.timestamps
    end
  end
end
