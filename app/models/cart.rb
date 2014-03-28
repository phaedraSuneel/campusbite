class Cart < ActiveRecord::Base
  
  has_many :menu_items , through: :cart_menu_items
  has_many :cart_menu_items, :dependent => :destroy
  belongs_to :user
  attr_accessible :token, :user_id


  def sub_total
  	price = 0
  	self.cart_menu_items.each do |item|
  		extra = 0
  		if item.menu_item_property_id
  			extra = item.property_price(item.menu_item_property_id)
  	  end		
  		price += (item.menu_item.price + extra) * item.quantity
  	end
  	return price
  end

  def sale_tax(restaurant)
  	restaurant = Restaurant.find(restaurant.id)
  	sale_tax = restaurant.sale_tax
  	sub_total =  self.sub_total
  	tax = ( sub_total * sale_tax ) / 100
  end

  def delivery_charges(restaurant)
  	restaurant = Restaurant.find(restaurant.id)
  	delivery_charges = restaurant.delivery_charges
	end

	def total_bill(restaurant)
		restaurant = Restaurant.find(restaurant.id)
		self.sub_total + self.sale_tax(restaurant) + self.delivery_charges(restaurant)
	end
end

