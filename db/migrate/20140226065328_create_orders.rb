class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :menu_item_id
      t.integer :user_id
      t.integer :quantity

      t.timestamps
    end
  end
end
