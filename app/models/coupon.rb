class Coupon < ActiveRecord::Base
  has_and_belongs_to_many :schools
  attr_accessible :amount, :code, :end_date, :max_use, :max_user, :min_amount, :start_date, :unit, :school_ids
  accepts_nested_attributes_for :schools
end
