class Upload < ActiveRecord::Base
  belongs_to :banner
  attr_accessible :banner_id, :image
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => '/assets/default.png'
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
