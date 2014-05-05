class Order < ActiveRecord::Base
  belongs_to :user
  belongs_to :restaurant
  belongs_to :address
  belongs_to :card
  belongs_to :payment
  has_many :menu_items, through: :menu_item_orders
  has_many :menu_item_orders

  attr_accessible :user_id, :delievery_address, :order_type, :request_time, :status, :restaurants_id, :card_id, :address_id, :delivery_instruction, :method_type, :payment_id, :tip, :secure_code

  after_save :update_user_points

  # after_create :email_order_to_restaurant_resources

  def update_user_points
    total = 0
    self.user.orders.each do |user_order|
      total += user_order.total_bill
    end  
    points = (total.floor) * 5
    self.user.update_attributes(:points => points)
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
  		if item.menu_item_property_id
  			extra = property_price(item.menu_item_property_id)
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


	def total_bill
    if self.order_type == "delivery"
		  self.sub_total + self.sale_tax + self.delivery_charges + self.tip_charges
    else   
      self.sub_total + self.sale_tax + self.tip_charges
    end  
	end
end
