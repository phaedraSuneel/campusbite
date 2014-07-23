class Admin::CustomersController < ApplicationController
	before_filter :set_view_all
	def index
		page = params[:draw].nil? ? 1 : params[:draw].to_i
    limit = params[:length].to_i
    offset = params[:start].to_i

    unless params[:order].nil?
      col_number = params[:order]["0"]["column"].to_i
      order_by_type  = params[:order]["0"]["dir"]
    end

    attribute_name = get_sort_attribute_name(col_number)
    sorting_query = [attribute_name,order_by_type].join(' ')

    @customers = User.with_orders.offset(offset).limit(limit).order(sorting_query)
    unless params[:search].nil?
      @customers = User.apply_search_all_filter(@customers, params[:search][:value])
    end
    respond_to do |format|
      format.json do
        return render :json =>  {draw: page,  recordsTotal: User.count,  recordsFiltered: User.count , :data => @customers.collect{|a| [a.first_name,a.last_name, a.phone_number, a.email, "<a src='#{admin_customer_url(a)}'><span class='label label-sm label-success'> Show </a>"]} }
      end
      format.html
    end

  end

  def show
  	@user = User.find params[:id]
  	@notes = @user.notes.order("created_at desc").last(10)
    @addresses = @user.addresses
  end

  def set_view_all
    User.where(is_viewed: false).each do |s|
     s.is_viewed = true
     s.save
    end
  end

 	private

  def get_sort_attribute_name(column_number)

    case column_number
    when 0
      return "first_name"
    when 1
    	return "last_name"
    when 2
    	return "phone_number"
    else
      return "email"
    end
  end

end
