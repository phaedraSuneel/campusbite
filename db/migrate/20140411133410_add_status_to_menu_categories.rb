class AddStatusToMenuCategories < ActiveRecord::Migration
  def change
    add_column :menu_categories, :status, :string, :default => "completed"
  end
end
