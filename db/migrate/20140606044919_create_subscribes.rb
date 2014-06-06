class CreateSubscribes < ActiveRecord::Migration
  def change
    create_table :subscribes do |t|
      t.string :name
      t.string :email
      t.string :school_name

      t.timestamps
    end
    add_index :subscribes, :email, :unique => true
  end
end
