class CreateJoinUs < ActiveRecord::Migration
  def change
    create_table :join_us do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :restaurant_name
      t.integer :phone_number
      t.integer :zip_code
      t.text :comment
      t.boolean :is_viewed, :default => false

      t.timestamps
    end
  end
end
