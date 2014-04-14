class Restaurant < ActiveRecord::Base

  versioned
  
  belongs_to :school
  belongs_to :user
  has_many  :restaurant_categories
  has_many :addons, :dependent => :destroy
  has_many :restaurant_offers, :dependent => :destroy
  has_many :favorites, :dependent => :destroy
  has_many :restaurant_coupons, :dependent => :destroy
  has_many  :orders, :dependent => :destroy
  has_many :reviews, :dependent => :destroy
  has_many :carts, :dependent => :destroy
    
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
                  :operation_attributes, :delivery_attributes, :pick_up_attributes, :avg_rating, :user_id, :user_attributes
                 
  accepts_nested_attributes_for :restaurant_categories
  accepts_nested_attributes_for :favorites
  accepts_nested_attributes_for :contact_info, :restaurant_info, :delivery_info, :order_info, :bank_info, :operation, :delivery, :pick_up
  accepts_nested_attributes_for :reviews
  accepts_nested_attributes_for :user
  before_create :create_menu
  after_create :assign_role_admin

 	def create_menu
 	  self.build_menu
 	end

  def assign_role_admin
    if self.user
      self.user.add_role :admin_restaurant
    end  
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

  def email
    self.contact_info.contact_email
  end

  def close_time
    today = Time.now.strftime('%A')
    self.operation.sechedules.where(:day => today).first.closing_time.strftime("%I:%M%p") 
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

  def customers
    self.orders.collect(&:user)
  end

  def last_week_orders
    week_last_day = Time.now.beginning_of_week - 1.day 
    week_first_day = week_last_day.beginning_of_week
    self.orders.where(:created_at => week_first_day..week_last_day).order("created_at desc")
  end

  def last_month_orders
    last_month = Time.now - 1.month
    month_first_day = last_month.beginning_of_month
    month_last_day = last_month.end_of_month
    self.orders.where(:created_at => month_first_day..month_last_day).order("created_at desc")
  end 

  def sechedule_pendings
    self.operation.sechedules.where(:status => 'pending') + self.delivery.sechedules.where(:status => "pending") + self.pick_up.sechedules.where(:status => "pending")
  end

  def menu_category_pendings
    self.menu.menu_categories.where(:status => 'pending')
  end 

  def menu_item_pendings
    self.menu.menu_categories.collect(&:menu_items).flatten.select{|a| a.status == 'pending'}
  end

  def offer_pendings
    self.restaurant_offers.where(:status => 'pending')
  end

  def coupon_pendings
    self.restaurant_coupons.where(:status => 'pending')
  end
end
