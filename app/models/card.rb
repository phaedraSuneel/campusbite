class Card < ActiveRecord::Base
  belongs_to :user
  has_many :orders
  attr_accessible :card_type, :cardholder_name, :expiration_date, :masked_number, :token, :unique_number_identifier, :user_id
end
