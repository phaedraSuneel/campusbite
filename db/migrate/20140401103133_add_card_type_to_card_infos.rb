class AddCardTypeToCardInfos < ActiveRecord::Migration
  def change
    add_column :card_infos, :card_type, :string
  end
end
