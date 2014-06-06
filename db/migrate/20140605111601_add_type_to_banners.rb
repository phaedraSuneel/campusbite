class AddTypeToBanners < ActiveRecord::Migration
  def change
    add_column :banners, :image_type, :string
  end
end
