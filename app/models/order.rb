class Order < ActiveRecord::Base
  belongs_to :user
  belongs_to :guest
  belongs_to :restaurant
  belongs_to :address
  belongs_to :card
  belongs_to :payment
  has_many :menu_items, through: :menu_item_orders
  has_many :menu_item_orders
  has_many :comments, :dependent => :destroy

  attr_accessible :user_id, :guest_id, :delievery_address, :order_type, :request_time, :status, :restaurants_id, :card_id, :address_id, :delivery_instruction, :method_type, :payment_id, :tip, :secure_code, :flag, :coupon_id, :coupon_off

  scope :with_user, lambda {|user| where(user_id: user.id ) }

  after_destroy :remove_associations
  after_save :decrease_coupon_limit


  def customer_name
    if self.user.nil?
      [self.guest.first_name, self.guest.last_name].join(' ')
    else
      self.user.name
    end
  end

  def customer_email
    if self.user.nil?
      self.guest.email
    else
      self.user.email
    end
  end

  def customer_phone
  end

  def decrease_coupon_limit
    if self.coupon_id?
      if self.coupon_off == "RestaurantCoupon"
        RestaurantCoupon.where(id: self.coupon_id).first.descrease_limit
      else
        Coupon.where(id: self.coupon_id).first.descrease_limit
      end
    end
  end

  def remove_associations
    self.menu_item_orders.clear
  end

  def update_user_points
    new_points = (self.total_bill.floor) * 5
    self.user.update_attributes(:points => self.user.points + new_points)
  end

  def property_name(id)
  	MenuItemProperty.find(id).name
  end

  def property_price(id)
  	MenuItemProperty.find(id).price
  end

  def sub_total
  	price = 0
  	self.menu_item_orders.each do |item|
  		extra = 0
  		unless item.group_item_ids.blank?
        item.group_items.each do |group_item|
          extra += group_item.price
        end
      end
  		price += (item.menu_item.price + extra) * item.quantity
  	end
  	return price
  end

  def sale_tax
  	restaurant = self.restaurant
  	sale_tax = restaurant.sale_tax || 0
  	sub_total =  self.sub_total
  	tax = ( sub_total * sale_tax ) / 100
  end

  def delivery_charges
  	restaurant = self.restaurant
  	delivery_charges = restaurant.delivery_charges || 0
	end

  def tip_charges
    if self.order_type == "delivery"
      total = self.sub_total + self.sale_tax + self.delivery_charges
    else
      total = self.sub_total + self.sale_tax
    end
    (total * self.tip) / 100
  end

  def detect_coupon_charges
    if self.coupon_off == "RestaurantCoupon"
      detect_restaurant_coupon_charges
    else
      detect_school_coupon_charges
    end
  end

  def detect_school_coupon_charges
    coupon = Coupon.where(id: self.coupon_id).first
    if coupon.present?
      unit = coupon.unit
      if unit == "$ off"
        coupon.amount
      else
        (self.sub_total * coupon.amount) / 100
      end
    else
      0.0
    end
  end

  def detect_restaurant_coupon_charges
    charge = RestaurantCoupon.where(id: self.coupon_id).first.charges
    (self.sub_total * charge) / 100
  end

  def total_after_discount
    self.total_bill - self.detect_coupon_charges
  end

	def total_bill
    if self.order_type == "delivery"
		  self.sub_total + self.sale_tax + self.delivery_charges + self.tip_charges
    else
      self.sub_total + self.sale_tax + self.tip_charges
    end
	end

  def restaurant_name
    Restaurant.where(id: self.restaurant_id).first.restaurant_name
  end

  def self.schedule_orders
    week_last_day = Time.now.beginning_of_week - 1.day
    week_first_day = week_last_day.beginning_of_week
    where(:created_at => week_first_day..week_last_day).order("created_at desc")
  end

  def get_address_type
    self.address.try(:address_type)
  end

  def get_address
    address_type = get_address_type
    if address_type == "On Campus"
      [address.room_number, address.building.try(:street_adress), address.school.try(:school_name) ].join(' ')
    elsif address_type == "Off Campus"
      [address.try(:room_number), address.building.try(:street_adress), address.building.try(:city), address.building.try(:state), address.building.try(:zip_code) ].join(" ")
    elsif address_type.nil?
      ""
    end
  end

  def get_telephone_number
    address.try(:phone_number)
  end

  def card_digits
    card.masked_number.last(4)
  end

  def approval_at
    payment.try(:transaction_at).nil? ?  '' : payment.try(:transaction_at).strftime("%m/%d/%Y %H:%M %p")
  end

  def reference
    payment.try(:transaction_id)
  end

  def last_comment
    comments.last.try(:message)
  end

  def flag_value
    flag? ? "Unflag Order" : "Flag Order"
  end

end
