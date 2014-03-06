class CreateOperations < ActiveRecord::Migration
  def change
    create_table :operations do |t|
      t.integer :restaurant_id

      t.timestamps
    end
  end
end
