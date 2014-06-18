class CreateSupports < ActiveRecord::Migration
  def change
    create_table :supports do |t|
      t.string :name
      t.string :restaurant_name
      t.integer :phone_number
      t.text :message
      t.boolean :is_viewed, :default => false

      t.timestamps
    end
  end
end
