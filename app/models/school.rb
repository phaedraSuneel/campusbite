class School < ActiveRecord::Base

  has_many :restaurants, :dependent => :destroy
  has_many :buildings, :dependent => :destroy
  has_many :addresses
  attr_accessible :branch_name, :school_address, :school_name, :delta
  accepts_nested_attributes_for :restaurants
  accepts_nested_attributes_for :buildings

end
