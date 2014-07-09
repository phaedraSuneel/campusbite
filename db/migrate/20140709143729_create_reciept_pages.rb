class CreateRecieptPages < ActiveRecord::Migration
  def change
    create_table :reciept_pages do |t|
      t.text :content

      t.timestamps
    end
  end
end
