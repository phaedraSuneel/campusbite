class Banner < ActiveRecord::Base
 
  has_many :uploads, :dependent => :destroy
  attr_accessible :image_type, :uploads_attributes
  accepts_nested_attributes_for :uploads, :allow_destroy => true
  
end
