class Payment < ActiveRecord::Base
  has_one :order
  belongs_to :user
  attr_accessible :amount, :transaction_at, :transaction_id, :transaction_status, :user_id
end
