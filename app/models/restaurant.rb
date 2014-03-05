class Restaurant < ActiveRecord::Base

  belongs_to :school
  has_many  :restaurant_categories
  has_many :addons, :dependent => :destroy
  has_many :restaurant_offers, :dependent => :destroy
  has_many :favorites, :dependent => :destroy

  #has_many  :orders, :dependent => :destroy
  has_one :menu, :dependent => :destroy
  has_one :contact_info, :dependent => :destroy
  has_one :restaurant_info, :dependent => :destroy
  has_one :delivery_info, :dependent => :destroy
  has_one :order_info, :dependent => :destroy
  has_one :bank_info, :dependent => :destroy
  attr_accessible :school_id, :restaurant_category_ids, :contact_info_attributes, :restaurant_info_attributes, :delivery_info_attributes, :order_info_attributes, :bank_info_attributes
  accepts_nested_attributes_for :restaurant_categories
  accepts_nested_attributes_for :favorites
  accepts_nested_attributes_for :contact_info, :restaurant_info, :delivery_info, :order_info, :bank_info

  before_save :create_menu


 	def create_menu
 	  self.build_menu
 	end

  def restaurant_name
    self.contact_info.restaurant_name
  end

  def open?
    today = Time.now.strftime('%A')
    current_time = Time.now.strftime("%I:%M%p") 
    current_time = Time.parse "2000-01-01 #{current_time}"
    restaurant_info = self.restaurant_info.restaurant_opening_closing_times.where(:day => today)
    opened_info = restaurant_info.where('opening_time  <= ? and closing_time >= ?' , current_time, current_time)

    return !opened_info.blank?
  end

  def opening_time
    self.restaurant_info.restaurant_opening_closing_times.where(:day => Time.now.strftime("%A")).first.opening_time.strftime("%I:%M%p")
  end

  def phone_oreder? 
    self.delivery_info.is_delivery? ? false : true 
  end

  def offer
    self.restaurant_offers.select{|a| a.valid_from <= Date.current and a.valid_to >= Date.current}.first  
  end 
end
