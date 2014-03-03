class CreateDeliveryInfos < ActiveRecord::Migration
  def change
    create_table :delivery_infos do |t|
      t.boolean :is_delivery
      t.string :delivery_estimated_time
      t.float :delivery_charges
      t.float :delivery_distance
      t.integer :restaurant_id

      t.timestamps
    end
  end
end
