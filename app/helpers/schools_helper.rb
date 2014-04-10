module SchoolsHelper
	
	def set_school_method(school)
		school.new_record? ? "post" : "put"
	end 
	def set_school_path(school)
		school.new_record? ? admin_schools_path(school) : admin_school_path(school)
	end
end
