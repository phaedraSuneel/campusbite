class BankInfo < ActiveRecord::Base
  belongs_to :restaurant
  attr_accessible :bank_account_number, :bank_name, :restaurant_id, :routine_number, :swift_code
end
