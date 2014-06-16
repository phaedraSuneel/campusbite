class CreateBreakSchedules < ActiveRecord::Migration
  def change
    create_table :break_schedules do |t|
      t.time :opening_time
      t.time :closing_time
      t.integer :sechedule_id

      t.timestamps
    end
  end
end
