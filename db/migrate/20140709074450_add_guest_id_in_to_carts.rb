class AddGuestIdInToCarts < ActiveRecord::Migration
  def change
    add_column :carts, :guest_id, :integer
  end
end
