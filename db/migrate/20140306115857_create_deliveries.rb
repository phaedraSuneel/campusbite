class CreateDeliveries < ActiveRecord::Migration
  def change
    create_table :deliveries do |t|
      t.integer :restaurant_id

      t.timestamps
    end
  end
end
