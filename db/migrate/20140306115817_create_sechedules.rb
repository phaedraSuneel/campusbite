class CreateSechedules < ActiveRecord::Migration
  def change
    create_table :sechedules do |t|
      t.string :day
      t.time :opening_time
      t.time :closing_time

      t.timestamps
    end
  end
end
