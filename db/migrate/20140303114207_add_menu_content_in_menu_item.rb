class AddMenuContentInMenuItem < ActiveRecord::Migration
  def up
  	add_column :menu_items, :menu_item_type, :string
  	add_column :menu_items, :addons, :boolean
  	add_column :menu_items, :instruction, :boolean
  	add_column :menu_items, :popluar_dish, :boolean
  	add_column :menu_items, :spicy_dish, :boolean
  end

  def down
  end
end
