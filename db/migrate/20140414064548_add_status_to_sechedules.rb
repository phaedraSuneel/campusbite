class AddStatusToSechedules < ActiveRecord::Migration
  def change
    add_column :sechedules, :status, :string, :default => "completed"
  end
end
