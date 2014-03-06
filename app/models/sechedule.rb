class Sechedule < ActiveRecord::Base
  belongs_to :sechedulable, :polymorphic => true
  attr_accessible :closing_time, :day, :opening_time, :sechedulable_id, :sechedulable_type
end
