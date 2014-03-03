class ContactInfo < ActiveRecord::Base
  belongs_to :restaurant
  attr_accessible :city, :contact_email, :contact_name, :contact_phone, :restaurant_id, :restaurant_name, :restaurant_phone, :restaurant_street_address, :restaurant_website, :state, :zip_code
end
