class Cuisine < ActiveRecord::Base
  has_many :menu_items
  attr_accessible :description, :name, :photo
  has_attached_file :photo,
                    :styles => {
                        :thumb => "75x75#",
                        :small_thumb => "27x27#",
                        :small => "150x150#",
                        :medium => "500x500>"
                    },
                    :default_url => '/assets/default.png'
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/
end
