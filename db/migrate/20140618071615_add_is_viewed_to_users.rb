class AddIsViewedToUsers < ActiveRecord::Migration
  def change
    add_column :users, :is_viewed, :boolean, :default => false
  end
end
