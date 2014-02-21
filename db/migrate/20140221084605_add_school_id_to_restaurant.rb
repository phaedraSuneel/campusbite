class AddSchoolIdToRestaurant < ActiveRecord::Migration
  def change
    add_column :restaurants, :school_id, :integer
  end
end
