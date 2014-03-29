class Building < ActiveRecord::Base
  belongs_to :school
  has_many :addresses
  attr_accessible :building_name, :city, :school_id, :state, :street_adress, :zip_code
end
