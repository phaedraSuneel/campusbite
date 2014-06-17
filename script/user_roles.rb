UserRole.delete_all
  UserRole.entities.collect do |key_e,entity|
  UserRole.actions.collect do |action_key,action|
    UserRole.create :action => action_key.to_s, :entity => entity.to_s, :name => [action,entity].join(' ')
  end
end  