class DeliveryInfo < ActiveRecord::Base
  belongs_to :restaurant_id
  attr_accessible :is_delivery, :delivery_charges, :delivery_distance, :delivery_estimated_time, :restaurant_id
end
