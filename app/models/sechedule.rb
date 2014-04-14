class Sechedule < ActiveRecord::Base
  versioned
  belongs_to :sechedulable, :polymorphic => true
  attr_accessible :closing_time, :day, :opening_time, :sechedulable_id, :sechedulable_type, :status
end