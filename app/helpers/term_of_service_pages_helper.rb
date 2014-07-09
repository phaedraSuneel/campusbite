module TermOfServicePagesHelper
  def set_term_of_service_page_url(term_of_service_page)
    term_of_service_page.new_record? ? admin_term_of_service_pages_path(term_of_service_page) : admin_term_of_service_page_path(term_of_service_page)
  end
end
