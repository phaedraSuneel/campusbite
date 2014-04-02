class Payment < ActiveRecord::Base
  has_one :order
  belongs_to :user
  attr_accessible :amount, :transition_at, :transition_id, :transition_status, :user_id
end
