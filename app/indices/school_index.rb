ThinkingSphinx::Index.define :school, :with => :active_record, :delta => ThinkingSphinx::Deltas::DelayedDelta do
  indexes :school_name, :sortable => true, :as => :school_name
  indexes buildings(:building_name), :sortable => true
  set_property :min_infix_len => 1
  set_property :delta => ThinkingSphinx::Deltas::DelayedDelta
end