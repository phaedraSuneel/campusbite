module RedeamsHelper
  def set_redeam_url(redeam)
    redeam.new_record? ? admin_redeams_path(redeam) : admin_redeam_path(redeam)
  end
end
