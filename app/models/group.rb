class Group < ActiveRecord::Base
  
  has_many :group_items, :dependent => :destroy
  belongs_to :menu_item
  attr_accessible :max_limit, :menu_item_id, :message, :message_color, :min_limit, :name, :required, :group_items_attributes
  accepts_nested_attributes_for :group_items
end
