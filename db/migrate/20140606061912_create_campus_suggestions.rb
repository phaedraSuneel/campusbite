class CreateCampusSuggestions < ActiveRecord::Migration
  def change
    create_table :campus_suggestions do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :campus_name
      t.string :street_address
      t.string :city
      t.string :state
      t.integer :zip_code
      t.text :comment
      t.boolean :is_viewed, :default => false

      t.timestamps
    end
  end
end
