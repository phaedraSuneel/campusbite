class AddInfoWayToOrderInfos < ActiveRecord::Migration
  def change
    add_column :order_infos, :info_way, :string
  end
end
