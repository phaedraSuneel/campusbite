class ContactUs < ActiveRecord::Base
  attr_accessible :email, :is_viewed, :message, :name, :subject
   validates_presence_of :email, :name, :subject
end
