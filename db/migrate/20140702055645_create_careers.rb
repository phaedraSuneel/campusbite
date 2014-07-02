class CreateCareers < ActiveRecord::Migration
  def change
    create_table :careers do |t|
      t.string :title
      t.string :location
      t.text :responsibilities

      t.timestamps
    end
  end
end
