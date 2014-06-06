class AddIsViewedToSubscribes < ActiveRecord::Migration
  def change
    add_column :subscribes, :is_viewed, :boolean, :default => false
  end
end
