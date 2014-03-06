class AddSechedulableAttributesIntoSechedule < ActiveRecord::Migration
  def up
  	add_column :sechedules, :sechedulable_id, :integer
  	add_column :sechedules, :sechedulable_type, :string
  end

  def down
  	remove_column :sechedules, :sechedulable_id
  	remove_column :sechedules, :sechedulable_type
  end
end
