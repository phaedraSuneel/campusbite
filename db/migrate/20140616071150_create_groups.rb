class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :name
      t.integer :min_limit
      t.integer :max_limit
      t.string :message
      t.string :message_color
      t.string :required
      t.string :boolean
      t.integer :menu_item_id

      t.timestamps
    end
  end
end
