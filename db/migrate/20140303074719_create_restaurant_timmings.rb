class CreateRestaurantTimmings < ActiveRecord::Migration
  def change
    create_table :restaurant_opening_closing_times do |t|
      t.time :opening_time
      t.time :closing_time
      t.string :day
      t.integer :restaurant_info_id

      t.timestamps
    end
  end
end
