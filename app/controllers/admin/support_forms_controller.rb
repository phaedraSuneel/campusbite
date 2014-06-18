class Admin::SupportFormsController < ApplicationController

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
    
   @support_requests = Support.offset(offset).limit(limit).order(sorting_query)
    unless params[:search].nil?
     @support_requests = Support.apply_search_filter(@support_requests, params[:search][:value])
    end
    respond_to do |format|
      format.json do 
        return render :json =>  {draw: page,  recordsTotal: Support.count,  recordsFiltered: Support.count , :data =>@support_requests.collect{|a| [a.name,a.restaurant_name,a.phone_number, a.message]} }
      end
      format.html
    end
  end

  def set_view_all
    Support.where(is_viewed: false).each do |s|
     s.is_viewed = true
     s.save 
    end
  end

  private

  def get_sort_attribute_name(column_number)
  
    case column_number
    when 0
      return "name"
    when 1
      return "restaurant_name"
    when 2
      return "phone_number"
    when 3
      return "message"
    else
      return "id"    
    end

  end

end
