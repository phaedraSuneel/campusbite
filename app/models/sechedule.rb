class Sechedule < ActiveRecord::Base
  versioned
  belongs_to :sechedulable, :polymorphic => true
  has_one :break_schedule, :dependent => :destroy
  attr_accessible :closing_time, :day, :opening_time, :sechedulable_id, :sechedulable_type, :status, :break_schedule_attributes
  accepts_nested_attributes_for :break_schedule
end