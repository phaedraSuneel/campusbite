class ChangeColumnDeliveryMinTimeTypeDeliveryInfo < ActiveRecord::Migration
  def up
  	change_column :delivery_infos, :delivery_estimated_time, :integer
  end

  def down
  	change_column :delivery_infos, :delivery_estimated_time, :string
  end
end
