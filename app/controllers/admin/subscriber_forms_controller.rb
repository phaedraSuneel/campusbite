class Admin::SubscriberFormsController < ApplicationController
  
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
 
    @subscribe_requests = Subscribe.offset(offset).limit(limit).order(sorting_query)
    respond_to do |format|
      format.json do 
        return render :json =>  {draw: page,  recordsTotal: Subscribe.count,  recordsFiltered: Subscribe.count , :data => @subscribe_requests.collect{|a| [a.name,a.email,a.school_name]} }
      end
      format.html
    end
  end

  private

  def get_sort_attribute_name(column_number)
  
    case column_number
    when 0
      return "name"
    when 1
      return "email"
    else
      return "school_name"
    end

  end

end