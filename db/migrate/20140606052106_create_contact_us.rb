class CreateContactUs < ActiveRecord::Migration
  def change
    create_table :contact_us do |t|
      t.string :name
      t.string :email
      t.string :subject
      t.text :message
      t.boolean :is_viewed, :default => false

      t.timestamps
    end
  end
end
