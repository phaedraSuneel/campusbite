class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :order_id
      t.text :message

      t.timestamps
    end
  end
end
