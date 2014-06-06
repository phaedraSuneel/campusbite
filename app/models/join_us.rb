class JoinUs < ActiveRecord::Base
  attr_accessible :comment, :email, :first_name, :is_viewed, :last_name, :phone_number, :restaurant_name, :zip_code
  validates_presence_of :first_name, :last_name, :email, :phone_number
end
