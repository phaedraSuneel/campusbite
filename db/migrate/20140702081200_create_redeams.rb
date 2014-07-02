class CreateRedeams < ActiveRecord::Migration
  def change
    create_table :redeams do |t|
      t.string :item_id
      t.string :item_name
      t.integer :item_price

      t.timestamps
    end
  end
end
