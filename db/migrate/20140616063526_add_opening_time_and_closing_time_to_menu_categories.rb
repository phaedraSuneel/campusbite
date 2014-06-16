class AddOpeningTimeAndClosingTimeToMenuCategories < ActiveRecord::Migration
  def change
    add_column :menu_categories, :opening_time, :time
    add_column :menu_categories, :closing_time, :time
  end
end
