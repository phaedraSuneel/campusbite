class CreateUserRoles < ActiveRecord::Migration
  def change
    create_table :user_roles do |t|
      t.string :name
      t.string :symbol
      t.text :notes
      t.string :action
      t.string :entity

      t.timestamps
    end
  end
end
