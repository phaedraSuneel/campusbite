class Order < ActiveRecord::Base
  belongs_to :user
  has_many :menu_items, through: :menu_item_orders
  has_many :menu_item_orders
  attr_accessible :user_id, :delievery_address, :order_type, :request_time
end
