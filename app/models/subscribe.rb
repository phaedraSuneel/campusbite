class Subscribe < ActiveRecord::Base
  attr_accessible :email, :name, :school_name
  validates_uniqueness_of :email
end
