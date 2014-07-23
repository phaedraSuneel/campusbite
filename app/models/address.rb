class Address < ActiveRecord::Base
  belongs_to :user
  belongs_to :school
  belongs_to :building
  has_many :order
  attr_accessible :address_name, :address_type, :building_id, :city, :room_number, :school_id, :state, :street_adress, :zip_code, :phone_number, :user_id


  def get_address
    if self.address_type == "On Campus"
      [self.room_number, self.building.try(:street_adress), self.school.try(:school_name) ].join(' ')
    elsif self.address_type == "Off Campus"
      [self.room_number, self.building.try(:street_adress), self.building.try(:city), self.building.try(:state), self.building.try(:zip_code) ].join(" ")
    elsif self.address_type.nil?
      ""
    end
  end

end
