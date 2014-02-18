class CreateAuthentications < ActiveRecord::Migration
  def change
    create_table :authentications do |t|
      t.string :provider
      t.string :uid
      t.integer :user_id
      t.string :provider_token
      t.datetime :token_expiration_date

      t.timestamps
    end
  end
end
