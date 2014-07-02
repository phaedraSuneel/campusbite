class RedeamRequest < ActiveRecord::Base
  attr_accessible :email, :first_name, :item_id, :last_name, :is_viewed
  after_create :detect_user_reward_points

  def detect_user_reward_points
    user = User.where(email: self.email).first
    redeam = Redeam.where(item_id: self.item_id).first
    user.points = user.points - redeam.item_price
    user.save
  end

  def self.apply_search_filter(data,key_word)
    search_keyword = ["%",key_word,"%"].join('')
    return data.where('first_name like ? OR last_name like ? OR email like ? OR item_id like ?', search_keyword, search_keyword, search_keyword, search_keyword)
  end
end
