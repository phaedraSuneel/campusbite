class AddInstructionsInToCartMenuItem < ActiveRecord::Migration
  def change
    add_column :cart_menu_items, :instruction, :text
  end
end
