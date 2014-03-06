class Delivery < ActiveRecord::Base
  has_many :sechedules, :as => :sechedulable, :dependent => :destroy
  belongs_to :restaurant
  attr_accessible :restaurant_id, :sechedules_attributes
  accepts_nested_attributes_for :sechedules
end
