class AddPropertyIdInToCartMenuItem < ActiveRecord::Migration
  def change
    add_column :cart_menu_items, :menu_item_property_id, :integer
  end
end
