class Restaurant < ActiveRecord::Base

  belongs_to :school
  has_many  :restaurant_categories
  has_many :addons, :dependent => :destroy
  has_many :restaurant_offers, :dependent => :destroy
  has_many :favorites, :dependent => :destroy
  has_many :restaurant_coupons, :dependent => :destroy
  has_many  :orders, :dependent => :destroy
  has_many :reviews, :dependent => :destroy
  
  has_one :menu, :dependent => :destroy
  has_one :contact_info, :dependent => :destroy
  has_one :restaurant_info, :dependent => :destroy
  has_one :delivery_info, :dependent => :destroy
  has_one :order_info, :dependent => :destroy
  has_one :bank_info, :dependent => :destroy
  has_one :pick_up, :dependent => :destroy
  has_one :delivery, :dependent => :destroy
  has_one :operation, :dependent => :destroy

  attr_accessible :school_id, :restaurant_category_ids, :contact_info_attributes, :restaurant_info_attributes, :delivery_info_attributes, :order_info_attributes, :bank_info_attributes,
                  :operation_attributes, :delivery_attributes, :pick_up_attributes
                 
  accepts_nested_attributes_for :restaurant_categories
  accepts_nested_attributes_for :favorites
  accepts_nested_attributes_for :contact_info, :restaurant_info, :delivery_info, :order_info, :bank_info, :operation, :delivery, :pick_up
  accepts_nested_attributes_for :reviews
  before_create :create_menu


 	def create_menu
 	  self.build_menu
 	end

  def restaurant_name
    self.contact_info.restaurant_name
  end

  def address
    self.contact_info.restaurant_street_address
  end

  def phone
    self.contact_info.contact_phone
  end

  def open?
    today = Time.now.strftime('%A')
    current_time = Time.now.strftime("%I:%M%p") 
    current_time = Time.parse "2000-01-01 #{current_time}"
    restaurant_info = self.operation.sechedules.where(:day => today)
    opened_info = restaurant_info.where('opening_time  <= ? and closing_time >= ?' , current_time, current_time)

    return !opened_info.blank?
  end

  def opening_time
    self.operation.sechedules.where(:day => Time.now.strftime("%A")).first.opening_time.strftime("%I:%M%p")
  end

  def phone_order? 
    self.delivery_info.is_delivery? ? false : true 
  end

  def offer
    self.restaurant_offers.select{|a| a.valid_from <= Date.current and a.valid_to >= Date.current}.first  
  end

  def sale_tax
    self.restaurant_info.sale_tax
  end

  def delivery_charges
    self.delivery_info.delivery_charges
  end

  def min_delivery
    self.restaurant_info.min_order
  end

  def estimated_time
    self.delivery_info.delivery_estimated_time
  end

  def avarage_rating
    sum = 0
    count = self.reviews.count
    if count>0
      self.reviews.each do |review|
        sum += review.rating
      end  
      (sum/count).to_i
    else
      0
    end
  end
end
