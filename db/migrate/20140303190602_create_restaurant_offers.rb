class CreateRestaurantOffers < ActiveRecord::Migration
  def change
    create_table :restaurant_offers do |t|
      t.integer :restaurant_id
      t.string :description
      t.float :offer_percentage
      t.float :offer_price
      t.datetime :valid_from
      t.datetime :valid_to

      t.timestamps
    end
  end
end
