module RestaurantCategoriesHelper
	def set_note_path(customer, note)
		note.new_record? ? admin_customer_notes_path(customer,note) : admin_customer_note_path(customer,note)
	end
end
