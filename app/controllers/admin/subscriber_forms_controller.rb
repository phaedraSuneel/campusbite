class Admin::SubscriberFormsController < ApplicationController
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

    @subscribe_requests = Subscribe.offset(offset).limit(limit).order(sorting_query)
    unless params[:search].nil?
      @subscribe_requests = Subscribe.apply_search_filter(@subscribe_requests, params[:search][:value])
    end
    respond_to do |format|
      format.json do
        return render :json =>  {draw: page,  recordsTotal: Subscribe.count,  recordsFiltered: Subscribe.count , :data => @subscribe_requests.collect{|a| [a.name,a.email,a.school_name, a.created_at_date, a.created_at_time, "<a src='#{delete_admin_subscriber_form_url(a)}' data-confirm='Are you sure?' data-method = 'delete' rel='nofollow'><span class='label label-sm label-danger'> delete </span> </a>"]} }
      end
      format.html
    end
  end

  def set_view_all
    Subscribe.where(is_viewed: false).each do |s|
     s.is_viewed = true
     s.save
    end
  end

  def delete
    Subscribe.where(id: params[:id]).first.destroy
    redirect_to :back
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