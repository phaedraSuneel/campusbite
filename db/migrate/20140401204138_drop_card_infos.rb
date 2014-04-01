class DropCardInfos < ActiveRecord::Migration
  def up
  	 drop_table :card_infos
  end

  def down
  end
end
