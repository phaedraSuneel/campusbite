class CreateGroupItems < ActiveRecord::Migration
  def change
    create_table :group_items do |t|
      t.string :name
      t.float :price
      t.boolean :is_pizza
      t.integer :group_id

      t.timestamps
    end
  end
end
