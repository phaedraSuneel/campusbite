class AddBannerIdToUploads < ActiveRecord::Migration
  def change
    add_column :uploads, :banner_id, :integer
  end
end
