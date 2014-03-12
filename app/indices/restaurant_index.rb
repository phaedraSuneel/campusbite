ThinkingSphinx::Index.define :restaurant, :with => :active_record do
  indexes school(:school_name), :sortable => true, :as => :school_name
  indexes school(:branch_name), :sortable => true, :as => :branch_name
  has restaurant_info(:is_pick_up), :as => :pick_up, :facet => true
  has delivery_info(:is_delivery),  :as => :delivery, :facet => true


  has restaurant_categories(:id), :as => :restaurant_category_ids, :facet => true
  
  indexes delivery_info(:delivery_charges), :as => :delivery_charges, :type => :float
  
  has delivery_info(:delivery_charges), :as => :delivery_mini, :type => :float

  set_property :min_infix_len => 1
end