class Addon < ActiveRecord::Base
  belongs_to :restuarant
  belongs_to :menu_category
  attr_accessible :count, :menu_category_id, :name, :restaurant_id
end
