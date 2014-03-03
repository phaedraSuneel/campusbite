class AddCuisineIdInToMenuItem < ActiveRecord::Migration
  def change
    add_column :menu_items, :cuisine_id, :integer
  end
end
