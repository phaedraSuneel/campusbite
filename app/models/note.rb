class Note < ActiveRecord::Base
  belongs_to :user
  attr_accessible :message, :user_id
end
