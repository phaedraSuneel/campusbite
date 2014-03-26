ThinkingSphinx::Index.define :restaurant, :with => :active_record do
  
  indexes school(:school_name), :sortable => true, :as => :school_name
  indexes school(:branch_name), :sortable => true, :as => :branch_name
  has restaurant_info(:is_pick_up), :as => :pick_up, :facet => true
  has delivery_info(:is_delivery),  :as => :delivery, :facet => true

  indexes contact_info(:restaurant_name), :sortable => true

  indexes delivery_info(:delivery_charges), :as => :delivery_charges

  has restaurant_categories(:id), :as => :restaurant_category_ids, :facet => true
  
  has restaurant_info(:min_order), :as => :min_order, :type => :float, :sortable => true

  has delivery_info(:delivery_estimated_time), :as => :delivery_eta, :type => :integer, :sortable => true

  set_property :min_infix_len => 1

end