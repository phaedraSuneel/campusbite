class GroupItem < ActiveRecord::Base
  belongs_to :group
  attr_accessible :group_id, :is_pizza, :name, :price
end
