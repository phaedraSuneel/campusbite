module CareersHelper
  def set_career_url(career)
    career.new_record? ? admin_careers_path(career) : admin_career_path(career)
  end
end
