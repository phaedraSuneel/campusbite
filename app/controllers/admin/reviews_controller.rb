class Admin::ReviewsController < ApplicationController
	
  def index
    page = params[:draw].nil? ? 1 : params[:draw].to_i
    limit = params[:length].to_i
    offset = params[:start].to_i
    @reviews = Restaurant.offset(offset).limit(limit)

    unless params[:order].nil?
      col_number = params[:order]["0"]["column"].to_i
      order_by_type  = params[:order]["0"]["dir"]
      attribute_name = get_all_sort_attribute_name(col_number)
      sorting_query = [attribute_name,order_by_type].join(' ') 
      @reviews = Restaurant.apply_order_filter(@reviews, sorting_query)
    end
    
    unless params[:search].nil?
      @reviews  = Restaurant.apply_search_filter(@reviews , params[:search][:value])
    end
    respond_to do |format|
      format.json do 
        return render :json =>  {draw: page,  recordsTotal: Restaurant.count,  recordsFiltered: Restaurant.count , :data => @reviews.collect{|a| [a.restaurant_name, a.avarage_rating , "<a src=#{admin_review_url(a)}> <span class='label label-sm label-success'> details </span> </a>" ]} }
      end
      format.html
    end
  end

  def show
    @restaurant = Restaurant.where(id: params[:id]).first
    @reviews = @restaurant.reviews.order('updated_at desc')

    page = params[:draw].nil? ? 1 : params[:draw].to_i
    limit = params[:length].to_i
    offset = params[:start].to_i

    @reviews = @restaurant.reviews.offset(offset).limit(limit)

    unless params[:order].nil?
      col_number = params[:order]["0"]["column"].to_i
      order_by_type  = params[:order]["0"]["dir"]
      attribute_name = get_sort_attribute_name(col_number)
      sorting_query = [attribute_name,order_by_type].join(' ')
      @reviews = Review.apply_order_filter(@reviews, sorting_query)      
    end
     
    unless params[:search].nil?
      @reviews  = Review.apply_search_filter(@reviews , params[:search][:value])
    end
    respond_to do |format|
      format.json do 
        return render :json =>  {draw: page,  recordsTotal: @restaurant.reviews.count,  recordsFiltered: @restaurant.reviews.count , :data => @reviews.collect{|a| [a.user.name, a.description, a.rating, "<span class='label label-default'>#{a.status}</span>", "<a src='#{change_status_admin_review_url(a,:status => "accept")}'><span class='label label-sm label-success'> accept </a>", "<a src='#{change_status_admin_review_url(a,:status => "reject")}'><span class='label label-sm label-danger'> reject </a>", "<a src='#{delete_admin_review_url(a)}' data-confirm = 'are you sure?'><span class='label label-sm label-danger'> delete </a>" ]} }
      end
      format.html
    end
  end

  def delete
    @review = Review.where(id: params[:id]).first
    @restaurant = @review.restaurant
    @review.destroy
    flash[:notice] = 'Review was successfully deleted.'
    redirect_to admin_review_path(@restaurant)
  end

  def change_status
    @review = Review.where(id: params[:id]).first
    @restaurant = @review.restaurant
    if @review.update_attributes(status: params[:status])
      flash[:notice] = 'Review was successfully updated.'
      redirect_to admin_review_path(@restaurant)
    else
      flash[:notice] = 'Review failed to updated.'
      redirect_to admin_review_path(@restaurant)
    end  

  end

  private

  def get_all_sort_attribute_name(col_number)
    case col_number
    when 0
      return "restaurant_name"
    when 1
      return "rating"
    else
      return "id"
    end  
  end

  def get_sort_attribute_name(col_number)
  
    case col_number
    when 0
      return "first_name"
    when 1
      return "description"
    when 2
      return "rating"  
    else 
      return "status"  
    end

  end 

end
