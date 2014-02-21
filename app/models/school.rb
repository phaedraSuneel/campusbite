class School < ActiveRecord::Base

  has_many :restaurants, :dependent => :destroy
  attr_accessible :branch_name, :school_address, :school_name

end
