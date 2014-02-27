class Cart < ActiveRecord::Base
  
  has_many :menu_items , through: :cart_menu_items
  has_many :cart_menu_items, :dependent => :destroy
  belongs_to :user
  attr_accessible :token, :user_id

end
