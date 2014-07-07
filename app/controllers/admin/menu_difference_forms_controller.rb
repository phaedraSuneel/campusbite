class Admin::MenuDifferenceFormsController < ApplicationController
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

   @menu_requests = MenuError.offset(offset).limit(limit).order(sorting_query)
    unless params[:search].nil?
     @menu_requests = MenuError.apply_search_filter(@menu_requests, params[:search][:value])
    end
    respond_to do |format|
      format.json do
        return render :json =>  {draw: page,  recordsTotal: MenuError.count,  recordsFiltered: MenuError.count , :data =>@menu_requests.collect{|a| [a.restaurant_name,a.email,a.school_name, a.note]} }
      end
      format.html
    end
  end

  def set_view_all
    MenuError.where(is_viewed: false).each do |s|
     s.is_viewed = true
     s.save
    end
  end

  private

  def get_sort_attribute_name(column_number)

    case column_number
    when 0
      return "restaurant_name"
    when 1
      return "email"
    when 2
      return "school_name"
    when 3
      return "note"
    else
      return "id"
    end

  end
end
