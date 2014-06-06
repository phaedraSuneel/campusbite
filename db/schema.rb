# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20140606052106) do

  create_table "addon_subcategories", :force => true do |t|
    t.string   "name"
    t.integer  "addon_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "addons", :force => true do |t|
    t.string   "name"
    t.float    "count"
    t.integer  "restaurant_id"
    t.integer  "menu_category_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "addresses", :force => true do |t|
    t.string   "address_type"
    t.string   "address_name"
    t.string   "street_adress"
    t.integer  "school_id"
    t.integer  "building_id"
    t.integer  "room_number"
    t.string   "city"
    t.string   "state"
    t.integer  "zip_code"
    t.integer  "user_id"
    t.integer  "phone_number"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "authentications", :force => true do |t|
    t.string   "provider"
    t.string   "uid"
    t.integer  "user_id"
    t.string   "provider_token"
    t.datetime "token_expiration_date"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  create_table "bank_infos", :force => true do |t|
    t.string   "bank_name"
    t.string   "bank_account_number"
    t.string   "routine_number"
    t.string   "swift_code"
    t.integer  "restaurant_id"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "banners", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "image_type"
  end

  create_table "buildings", :force => true do |t|
    t.string   "building_name"
    t.string   "street_adress"
    t.integer  "school_id"
    t.string   "city"
    t.string   "state"
    t.integer  "zip_code"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "cards", :force => true do |t|
    t.datetime "expiration_date"
    t.integer  "user_id"
    t.string   "cardholder_name"
    t.string   "token"
    t.string   "masked_number"
    t.integer  "unique_number_identifier"
    t.string   "card_type"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "cart_menu_items", :force => true do |t|
    t.integer  "cart_id"
    t.integer  "menu_item_id"
    t.integer  "quantity"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
    t.integer  "menu_item_property_id"
    t.text     "instruction"
    t.integer  "restaurant_id"
  end

  create_table "carts", :force => true do |t|
    t.string   "token"
    t.integer  "user_id"
    t.datetime "created_at",                            :null => false
    t.datetime "updated_at",                            :null => false
    t.integer  "restaurant_id"
    t.string   "order_type",    :default => "delivery"
  end

  create_table "contact_infos", :force => true do |t|
    t.string   "restaurant_name"
    t.string   "restaurant_phone"
    t.string   "restaurant_website"
    t.string   "restaurant_street_address"
    t.string   "state"
    t.string   "city"
    t.integer  "zip_code"
    t.string   "contact_name"
    t.integer  "contact_phone"
    t.string   "contact_email"
    t.integer  "restaurant_id"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
    t.string   "map_photo_file_name"
    t.string   "map_photo_content_type"
    t.integer  "map_photo_file_size"
  end

  create_table "contact_us", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "subject"
    t.text     "message"
    t.boolean  "is_viewed",  :default => false
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  create_table "cuisines", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
  end

  create_table "delayed_jobs", :force => true do |t|
    t.integer  "priority",   :default => 0, :null => false
    t.integer  "attempts",   :default => 0, :null => false
    t.text     "handler",                   :null => false
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by"
    t.string   "queue"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  add_index "delayed_jobs", ["priority", "run_at"], :name => "delayed_jobs_priority"

  create_table "deliveries", :force => true do |t|
    t.integer  "restaurant_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "delivery_infos", :force => true do |t|
    t.boolean  "is_delivery"
    t.integer  "delivery_estimated_time"
    t.float    "delivery_charges"
    t.float    "delivery_distance"
    t.integer  "restaurant_id"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  create_table "favorites", :force => true do |t|
    t.integer  "user_id"
    t.integer  "restaurant_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "menu_categories", :force => true do |t|
    t.string   "category_name"
    t.integer  "menu_id"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "status",        :default => "completed"
  end

  create_table "menu_item_orders", :force => true do |t|
    t.integer  "menu_item_id"
    t.integer  "order_id"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
    t.integer  "quantity"
    t.integer  "menu_item_property_id"
    t.integer  "restaurant_id"
    t.text     "instruction"
  end

  create_table "menu_item_properties", :force => true do |t|
    t.string   "name"
    t.float    "price"
    t.integer  "menu_item_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "menu_items", :force => true do |t|
    t.string   "item_name"
    t.integer  "menu_category_id"
    t.float    "price"
    t.string   "short_description"
    t.datetime "created_at",                                  :null => false
    t.datetime "updated_at",                                  :null => false
    t.text     "description"
    t.string   "menu_item_type"
    t.boolean  "addons"
    t.boolean  "instruction"
    t.boolean  "popluar_dish"
    t.boolean  "spicy_dish"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.integer  "cuisine_id"
    t.string   "status",             :default => "completed"
  end

  create_table "menus", :force => true do |t|
    t.integer  "restaurant_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "operations", :force => true do |t|
    t.integer  "restaurant_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "order_infos", :force => true do |t|
    t.string   "email_order"
    t.integer  "fax_number"
    t.boolean  "gprs"
    t.string   "cloud_printer_email"
    t.string   "cloud_printer_password"
    t.boolean  "sms_option"
    t.boolean  "order_pending_alert_ring_tone"
    t.integer  "restaurant_id"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
    t.string   "info_way"
  end

  create_table "orders", :force => true do |t|
    t.integer  "user_id"
    t.datetime "created_at",                            :null => false
    t.datetime "updated_at",                            :null => false
    t.string   "delievery_address"
    t.string   "order_type"
    t.string   "request_time"
    t.string   "status"
    t.integer  "restaurant_id"
    t.integer  "address_id"
    t.text     "delivery_instruction"
    t.string   "paymemt_method"
    t.integer  "card_id"
    t.string   "method_type"
    t.integer  "payment_id"
    t.float    "tip",                  :default => 0.0
    t.string   "secure_code"
  end

  create_table "payments", :force => true do |t|
    t.integer  "transaction_id"
    t.datetime "transaction_at"
    t.string   "transaction_status"
    t.float    "amount"
    t.integer  "user_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "pick_ups", :force => true do |t|
    t.integer  "restaurant_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "restaurant_categories", :force => true do |t|
    t.string   "category_name"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "restaurant_id"
  end

  create_table "restaurant_coupons", :force => true do |t|
    t.integer  "restaurant_id"
    t.datetime "expiration_date"
    t.datetime "created_at",                                         :null => false
    t.datetime "updated_at",                                         :null => false
    t.string   "coupon_image_file_name"
    t.string   "coupon_image_content_type"
    t.integer  "coupon_image_file_size"
    t.string   "status",                    :default => "completed"
  end

  create_table "restaurant_infos", :force => true do |t|
    t.text     "about_restaurant"
    t.boolean  "is_pick_up"
    t.boolean  "is_featured"
    t.float    "min_order"
    t.integer  "restaurant_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.float    "sale_tax"
  end

  create_table "restaurant_offers", :force => true do |t|
    t.integer  "restaurant_id"
    t.string   "description"
    t.float    "offer_percentage"
    t.float    "offer_price"
    t.datetime "valid_from"
    t.datetime "valid_to"
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
    t.string   "status",           :default => "completed"
  end

  create_table "restaurant_opening_closing_times", :force => true do |t|
    t.time     "opening_time"
    t.time     "closing_time"
    t.string   "day"
    t.integer  "restaurant_info_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "restaurants", :force => true do |t|
    t.datetime "created_at",                          :null => false
    t.datetime "updated_at",                          :null => false
    t.integer  "school_id"
    t.integer  "avg_rating", :default => 0
    t.integer  "user_id"
    t.string   "status",     :default => "completed"
    t.boolean  "delta",      :default => true,        :null => false
  end

  add_index "restaurants", ["delta"], :name => "index_restaurants_on_delta"

  create_table "reviews", :force => true do |t|
    t.integer  "rating"
    t.integer  "user_id"
    t.integer  "restaurant_id"
    t.text     "description"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "roles", ["name", "resource_type", "resource_id"], :name => "index_roles_on_name_and_resource_type_and_resource_id"
  add_index "roles", ["name"], :name => "index_roles_on_name"

  create_table "schools", :force => true do |t|
    t.string   "school_name"
    t.string   "school_address"
    t.string   "branch_name"
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
    t.boolean  "delta",          :default => true, :null => false
  end

  add_index "schools", ["delta"], :name => "index_schools_on_delta"

  create_table "sechedules", :force => true do |t|
    t.string   "day"
    t.time     "opening_time"
    t.time     "closing_time"
    t.datetime "created_at",                                 :null => false
    t.datetime "updated_at",                                 :null => false
    t.integer  "sechedulable_id"
    t.string   "sechedulable_type"
    t.string   "status",            :default => "completed"
  end

  create_table "subscribes", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "school_name"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "subscribes", ["email"], :name => "index_subscribes_on_email", :unique => true

  create_table "uploads", :force => true do |t|
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "banner_id"
  end

  create_table "users", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email",                  :default => "",    :null => false
    t.string   "encrypted_password",     :default => "",    :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,     :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
    t.string   "school_name"
    t.string   "customer_id"
    t.integer  "points",                 :default => 0
    t.boolean  "mute",                   :default => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "users_roles", :id => false, :force => true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], :name => "index_users_roles_on_user_id_and_role_id"

  create_table "versions", :force => true do |t|
    t.integer  "versioned_id"
    t.string   "versioned_type"
    t.integer  "user_id"
    t.string   "user_type"
    t.string   "user_name"
    t.text     "modifications"
    t.integer  "number"
    t.integer  "reverted_from"
    t.string   "tag"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "versions", ["created_at"], :name => "index_versions_on_created_at"
  add_index "versions", ["number"], :name => "index_versions_on_number"
  add_index "versions", ["tag"], :name => "index_versions_on_tag"
  add_index "versions", ["user_id", "user_type"], :name => "index_versions_on_user_id_and_user_type"
  add_index "versions", ["user_name"], :name => "index_versions_on_user_name"
  add_index "versions", ["versioned_id", "versioned_type"], :name => "index_versions_on_versioned_id_and_versioned_type"

end
