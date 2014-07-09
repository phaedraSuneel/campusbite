module FaqsHelper
  def set_faq_url(faq)
    faq.new_record? ? admin_faqs_path(faq) : admin_faq_path(faq)
  end
end
