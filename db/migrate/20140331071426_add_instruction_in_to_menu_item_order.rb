class AddInstructionInToMenuItemOrder < ActiveRecord::Migration
  def change
    add_column :menu_item_orders, :instruction, :text
  end
end
