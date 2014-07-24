class CreateRestaurantSchools < ActiveRecord::Migration
  def change
    create_table :restaurant_schools do |t|
      t.integer :restaurant_id
      t.integer :school_id

      t.timestamps
    end
  end
end
