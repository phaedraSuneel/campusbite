class CreateUserPages < ActiveRecord::Migration
  def change
    create_table :user_pages do |t|
      t.text :content

      t.timestamps
    end
  end
end
