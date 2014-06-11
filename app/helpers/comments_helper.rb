module CommentsHelper
	def set_comment_path(order, comment)
		comment.new_record? ? admin_order_comments_path(order,comment) : admin_order_comment_path(order,comment)
	end
end
