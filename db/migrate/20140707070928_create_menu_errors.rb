class CreateMenuErrors < ActiveRecord::Migration
  def change
    create_table :menu_errors do |t|
      t.string :email
      t.string :restaurant_name
      t.string :school_name
      t.text :note
      t.boolean :is_viewed, :default => false

      t.timestamps
    end
  end
end
