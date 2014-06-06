class CampusSuggestion < ActiveRecord::Base
  attr_accessible :campus_name, :city, :comment, :email, :first_name, :is_viewed, :last_name, :state, :street_address, :zip_code
  validates_presence_of :first_name, :last_name, :email, :campus_name, :state, :zip_code
end
