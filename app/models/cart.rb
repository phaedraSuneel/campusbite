class Cart < ActiveRecord::Base
  
  has_many :menu_items , through: :cart_menu_items
  has_many :cart_menu_items, :dependent => :destroy
  belongs_to :user
  belongs_to :restaurant
  attr_accessible :token, :user_id, :order_type, :restaurant_id


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
  	sale_tax = restaurant.sale_tax || 0
  	sub_total =  self.sub_total
  	tax = ( sub_total * sale_tax ) / 100
  end

  def delivery_charges(restaurant)
  	restaurant = Restaurant.find(restaurant.id)
  	delivery_charges = restaurant.delivery_charges || 0.0
	end

	def total_bill(restaurant)
		restaurant = Restaurant.find(restaurant.id)
    if self.order_type == "delivery"
      self.sub_total + self.sale_tax(restaurant) + self.delivery_charges(restaurant)
    else
      self.sub_total + self.sale_tax(restaurant)
    end
      
	end

  def paypal_url(return_url,total_bill)
    values = {
      :business  => 'suneel.kumar-facilitator@phaedrasolutions.com',
      :cmd => '_cart',
      :upload=> 1,
      :return => return_url,
      :invoice => self.id,
      :amount_1 => total_bill,
      :item_name_1 => 'Order',
      :item_number_1 => self.id,
      :quantity_1 => 1
    }
    "https://www.sandbox.paypal.com/cgi-bin/webscr?" + values.to_query
  end


end

