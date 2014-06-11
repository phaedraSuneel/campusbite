class Admin::ReportsController < ApplicationController
	
	def index
		@orders = Order.order('created_at desc')
	end

	def report_print
    @orders = Order.order('created_at desc')
    render report_print_admin_reports_path, :layout => false
  end

end
