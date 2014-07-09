module RecieptPagesHelper
  def set_reciept_page_url(reciept_page)
    reciept_page.new_record? ? admin_reciept_pages_path(reciept_page) : admin_reciept_page_path(reciept_page)
  end
end
