class CreateContactInfos < ActiveRecord::Migration
  def change
    create_table :contact_infos do |t|
      t.string :restaurant_name
      t.string :restaurant_phone
      t.string :restaurant_website
      t.string :restaurant_street_address
      t.string :state
      t.string :city
      t.integer :zip_code
      t.string :contact_name
      t.integer :contact_phone
      t.string :contact_email
      t.integer :restaurant_id

      t.timestamps
    end
  end
end
