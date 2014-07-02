class CreateRedeamRequests < ActiveRecord::Migration
  def change
    create_table :redeam_requests do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :item_id

      t.timestamps
    end
  end
end
