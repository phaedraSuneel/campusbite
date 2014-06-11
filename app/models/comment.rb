class Comment < ActiveRecord::Base
  belongs_to :order
  attr_accessible :message, :order_id
end
