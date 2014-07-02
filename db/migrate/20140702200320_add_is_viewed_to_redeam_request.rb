class AddIsViewedToRedeamRequest < ActiveRecord::Migration
  def change
    add_column :redeam_requests, :is_viewed, :boolean, :default => false
  end
end
