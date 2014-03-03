class CreateOrderInfos < ActiveRecord::Migration
  def change
    create_table :order_infos do |t|
      t.string :email_order
      t.integer :fax_number
      t.boolean :gprs
      t.string :cloud_printer_email
      t.string :cloud_printer_password
      t.boolean :sms_option
      t.boolean :order_pending_alert_ring_tone
      t.integer :restaurant_id

      t.timestamps
    end
  end
end
