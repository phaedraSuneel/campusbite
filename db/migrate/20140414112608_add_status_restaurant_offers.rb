class AddStatusRestaurantOffers < ActiveRecord::Migration
  def change
    add_column :restaurant_offers, :status, :string, :default => "completed"
  end
end
