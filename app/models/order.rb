class Order < ActiveRecord::Base
  belongs_to :user
  belongs_to :restaurant
  belongs_to :address
  belongs_to :card
  belongs_to :payment
  has_many :menu_items, through: :menu_item_orders
  has_many :menu_item_orders

  attr_accessible :user_id, :delievery_address, :order_type, :request_time, :status, :restaurants_id, :card_id, :address_id, :delivery_instruction, :method_type, :payment_id


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
  	delivery_charges = restaurant.delivery_charges
	end

	def total_bill
    if self.method_type == "delivery"
		  self.sub_total + self.sale_tax + self.delivery_charges
    else   
      self.sub_total + self.sale_tax
    end  
	end
end
