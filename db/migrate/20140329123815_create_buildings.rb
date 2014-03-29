class CreateBuildings < ActiveRecord::Migration
  def change
    create_table :buildings do |t|
      t.string :building_name
      t.string :street_adress
      t.integer :school_id
      t.string :city
      t.string :state
      t.integer :zip_code

      t.timestamps
    end
  end
end
