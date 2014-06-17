class CreateTableRolesUserRoles < ActiveRecord::Migration
  def change
    create_table :roles_user_roles do |t|
      t.integer :user_role_id
      t.integer :role_id

      t.timestamps
    end
  end
end
