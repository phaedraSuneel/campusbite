class AddColumnDeltaInSchool < ActiveRecord::Migration
  def up
  	add_column :schools, :delta, :boolean, :default => true, :null => false
  end

  def down
  	remove_column :schools, :delta
  end
end
