class Restaurant < ActiveRecord::Base

  belongs_to :school
  has_many  :restaurant_categories
  has_many :addons, :dependent => :destroy
  has_many :restaurant_offers, :dependent => :destroy
  #has_many  :orders, :dependent => :destroy
  has_one :menu, :dependent => :destroy
  has_one :contact_info, :dependent => :destroy
  has_one :restaurant_info, :dependent => :destroy
  has_one :delivery_info, :dependent => :destroy
  has_one :order_info, :dependent => :destroy
  has_one :bank_info, :dependent => :destroy
  attr_accessible :school_id, :restaurant_category_ids, :contact_info_attributes, :restaurant_info_attributes, :delivery_info_attributes, :order_info_attributes, :bank_info_attributes
  accepts_nested_attributes_for :restaurant_categories
  
  accepts_nested_attributes_for :contact_info, :restaurant_info, :delivery_info, :order_info, :bank_info

  before_save :create_menu


 	def create_menu
 	  self.build_menu
 	end

  def restaurant_name
    self.contact_info.restaurant_name
  end 								
end
