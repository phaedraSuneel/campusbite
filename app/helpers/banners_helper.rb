module BannersHelper
	def set_banner_path(banner)
		banner.new_record? ? admin_banners_path(banner) : admin_banner_path(banner)
	end
end
