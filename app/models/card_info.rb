class CardInfo < ActiveRecord::Base
  belongs_to :user
  has_many :order
  attr_accessible :billing_zipcode, :card_number, :cvv_code, :expiration_date, :user_id, :card_type
end
