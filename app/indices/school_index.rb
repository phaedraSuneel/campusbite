ThinkingSphinx::Index.define :school, :with => :active_record do
  indexes :school_name, :sortable => true
  indexes :branch_name, :sortable => true
  set_property :min_infix_len => 1
end  