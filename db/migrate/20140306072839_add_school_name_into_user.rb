class AddSchoolNameIntoUser < ActiveRecord::Migration
  def up
  	add_column :users, :school_name, :string
  end

  def down
  	remove_column :users, :school_name
  end
end
