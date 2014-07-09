class CreateTermOfServicePages < ActiveRecord::Migration
  def change
    create_table :term_of_service_pages do |t|
      t.text :content

      t.timestamps
    end
  end
end
