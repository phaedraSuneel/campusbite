class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :address_type
      t.string :address_name
      t.string :street_adress
      t.integer :school_id
      t.integer :building_id
      t.integer :room_number
      t.string :city
      t.string :state
      t.integer :zip_code
      t.integer :user_id
      t.integer  :phone_number
      t.timestamps
    end
  end
end
