class AddRedeamIdToUploads < ActiveRecord::Migration
  def change
    add_column :uploads, :redeam_id, :integer
  end
end
