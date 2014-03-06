class CreatePickUps < ActiveRecord::Migration
  def change
    create_table :pick_ups do |t|
      t.integer :restaurant_id

      t.timestamps
    end
  end
end
