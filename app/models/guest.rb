class Guest < ActiveRecord::Base

  has_many :orders, :dependent => :destroy
  has_many :carts, :dependent => :destroy
  attr_accessible :email, :first_name, :last_name
end
