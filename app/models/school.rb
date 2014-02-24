class School < ActiveRecord::Base

  has_many :restaurants, :dependent => :destroy
  attr_accessible :branch_name, :school_address, :school_name
  accepts_nested_attributes_for :restaurants

  searchable do
  	text :school_name
  end

end
