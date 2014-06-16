class BreakSchedule < ActiveRecord::Base
  belongs_to :sechedule
  attr_accessible :closing_time, :opening_time, :sechedule_id
end
