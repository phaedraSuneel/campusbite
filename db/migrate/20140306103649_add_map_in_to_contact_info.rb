class AddMapInToContactInfo < ActiveRecord::Migration
  def self.up
    add_column :contact_infos, :map_photo_file_name, :string
    add_column :contact_infos, :map_photo_content_type, :string
    add_column :contact_infos, :map_photo_file_size, :integer
  end
  def self.down
    remove_column :contact_infos, :map_photo_file_name
    remove_column :contact_infos, :map_photo_content_type
    remove_column :contact_infos, :map_photo_file_size
  end
end
