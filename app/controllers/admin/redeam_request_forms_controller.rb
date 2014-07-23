class Admin::RedeamRequestFormsController < ApplicationController
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

   @redeam_requests = RedeamRequest.offset(offset).limit(limit).order(sorting_query)
    unless params[:search].nil?
     @redeam_requests = RedeamRequest.apply_search_filter(@redeam_requests, params[:search][:value])
    end
    respond_to do |format|
      format.json do
        return render :json =>  {draw: page,  recordsTotal: RedeamRequest.count,  recordsFiltered: RedeamRequest.count , :data =>@redeam_requests.collect{|a| [a.first_name,a.last_name,a.email, a.item_id, a.created_at_date, a.created_at_time, "<a src='#{delete_admin_redeam_request_form_url(a)}' data-confirm='Are you sure?' data-method = 'delete' rel='nofollow'><span class='label label-sm label-danger'> delete </span> </a>"]} }
      end
      format.html
    end
  end

  def set_view_all
    RedeamRequest.where(is_viewed: false).each do |s|
     s.is_viewed = true
     s.save
    end
  end

  def delete
    RedeamRequest.where(id: params[:id]).first.destroy
    redirect_to :back
  end

  private

  def get_sort_attribute_name(column_number)

    case column_number
    when 0
      return "first_name"
    when 1
      return "last_name"
    when 2
      return "email"
    when 3
      return "item_id"
    else
      return "id"
    end

  end
end
