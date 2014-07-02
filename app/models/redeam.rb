class Redeam < ActiveRecord::Base

  has_one :upload, :dependent => :destroy
  attr_accessible :item_id, :item_name, :item_price, :upload_attributes
  accepts_nested_attributes_for :upload, :allow_destroy => true
  before_save :generate_item_id

  def generate_item_id
    self.item_id = self.item_name.gsub(' ','').downcase
    #self.item_id = self.item_id.downcase
  end
end
