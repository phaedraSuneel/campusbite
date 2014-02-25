class Restaurant < ActiveRecord::Base

  belongs_to :school
  has_many  :restaurant_categories
  has_one :menu, :dependent => :destroy

  attr_accessible :about_restaurant, :city, :delivery_eta, :is_deliver, :is_pick_up, :min_delivery, 
  								:restaurant_name, :restaurant_phone, :restaurant_street_address, :restaurant_website,
  								:state, :zip_code, :is_featured, :school_id, :restaurant_category_ids, :delivery_charges
  accepts_nested_attributes_for :restaurant_categories
  before_save :create_menu
 	

 	def create_menu
 	  self.build_menu
 	end 								
end
