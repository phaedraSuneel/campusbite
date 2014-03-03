class OrderInfo < ActiveRecord::Base
  belongs_to :restaurant
  attr_accessible :cloud_printer_email, :cloud_printer_password, :email_order, :fax_number, :gprs, :order_pending_alert_ring_tone, :restaurant_id, :sms_option
end
