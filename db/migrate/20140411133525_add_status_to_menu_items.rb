class AddStatusToMenuItems < ActiveRecord::Migration
  def change
    add_column :menu_items, :status, :string, :default => "completed"
  end
end
