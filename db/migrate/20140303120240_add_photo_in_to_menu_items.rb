class AddPhotoInToMenuItems < ActiveRecord::Migration
  def self.up
    add_column :menu_items, :photo_file_name, :string
    add_column :menu_items, :photo_content_type, :string
    add_column :menu_items, :photo_file_size, :integer
  end
  def self.down
    remove_column :menu_items, :photo_file_name
    remove_column :menu_items, :photo_content_type
    remove_column :menu_items, :photo_file_size
  end
end
