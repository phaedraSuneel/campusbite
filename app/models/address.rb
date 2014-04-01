class Address < ActiveRecord::Base
  belongs_to :user
  belongs_to :school
  belongs_to :building
  has_many :order
  attr_accessible :address_name, :address_type, :building_id, :city, :room_number, :school_id, :state, :street_adress, :zip_code, :phone_number, :user_id
end
