class ChangeColumnMaskNumberToCards < ActiveRecord::Migration
  def up
  	change_column :cards, :masked_number,  :string
  end

  def down
  end
end
