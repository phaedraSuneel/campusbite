module UserPagesHelper
  def set_user_page_url(user_page)
    user_page.new_record? ? admin_user_pages_path(user_page) : admin_user_page_path(user_page)
  end
end
