class CreateRestaurantSuggestions < ActiveRecord::Migration
  def change
    create_table :restaurant_suggestions do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :campus_name
      t.string :restaurant_name_1
      t.integer :phone_number_1
      t.string :restaurant_name_2
      t.integer :phone_number_2
      t.string :restaurant_name_3
      t.integer :phone_number_3
      t.boolean :is_viewed, :default => false

      t.timestamps
    end
  end
end
