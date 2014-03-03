class Addon < ActiveRecord::Base
  belongs_to :restuarant
  belongs_to :menu_category
  has_many :addon_subcategories, :dependent => :destroy
  attr_accessible :count, :menu_category_id, :name, :restaurant_id, :addon_subcategories_attributes
  accepts_nested_attributes_for :addon_subcategories
end
