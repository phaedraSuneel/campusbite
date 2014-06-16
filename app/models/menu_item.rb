class MenuItem < ActiveRecord::Base
  versioned
  belongs_to :menu_category
  belongs_to :cuisine
  has_many :orders, through: :menu_item_orders
  has_many :carts, through: :cart_menu_items
  has_many :cart_menu_items
  has_many :menu_item_orders
  has_many :menu_item_properties, :dependent => :destroy
  has_many :groups, :dependent => :destroy
  attr_accessible :item_name, :menu_category_id, :price, :short_description, :description, :menu_item_type, :addons, :instruction, :popluar_dish, :spicy_dish, :photo, :menu_item_properties_attributes, :cuisine_id, :status, :groups_attributes
  has_attached_file :photo,
                    :styles => {
                        :thumb => "75x75#",
                        :small_thumb => "27x27#",
                        :small => "150x150#",
                        :medium => "500x500>"
                    },
                    :default_url => '/assets/default.png'
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/ 
              
  accepts_nested_attributes_for :menu_item_properties
  accepts_nested_attributes_for :groups

  def restaurant
     self.menu_category.menu.restaurant
  end 

end
