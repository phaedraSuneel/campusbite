class MenuItem < ActiveRecord::Base
  belongs_to :menu_category
  attr_accessible :item_name, :menu_category_id, :price, :short_description
end
