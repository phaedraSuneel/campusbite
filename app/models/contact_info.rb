class ContactInfo < ActiveRecord::Base
  belongs_to :restaurant
  attr_accessible :city, :contact_email, :contact_name, :contact_phone, :restaurant_id, :restaurant_name, :restaurant_phone, :restaurant_street_address, :restaurant_website, :state, :zip_code, :map_photo
  has_attached_file :map_photo,
                    :styles => {
                        :thumb => "75x75#",
                        :small_thumb => "27x27#",
                        :small => "150x150#",
                        :medium => "500x500>",
                        :large => "713x380"
                    },
                    :default_url => '/assets/default.png'
  validates_attachment_content_type :map_photo, :content_type => /\Aimage\/.*\Z/
end
