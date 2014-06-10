class Admin::RestaurantCategoriesController < ApplicationController
 
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

    @restaurant_categories = RestaurantCategory.offset(offset).limit(limit).order(sorting_query)
    unless params[:search].nil?
      @restaurant_categories = RestaurantCategory.apply_search_filter(@restaurant_categories, params[:search][:value])
    end
    respond_to do |format|
      format.json do 
        return render :json =>  {draw: page,  recordsTotal: RestaurantCategory.count,  recordsFiltered: RestaurantCategory.count , :data => @restaurant_categories.collect{|a| [a.category_name,"<a src='#{edit_admin_restaurant_category_url(a)}'><span class='label label-sm label-default'> edit </a>", "<a src='#{delete_admin_restaurant_category_url(a)}' data-confirm='Are you sure?' data-method = 'delete' rel='nofollow'><span class='label label-sm label-danger'> delete </a>"]} }
      end
      format.html
    end
  end

  def show
    authorize! :read, RestaurantCategory
    @restaurant_category = RestaurantCategory.find(params[:id])
  end

  def new
    authorize! :create, RestaurantCategory
    @restaurant_category = RestaurantCategory.new
  end

  def edit
    authorize! :update, RestaurantCategory
    @restaurant_category = RestaurantCategory.find(params[:id])
  end

  def create
    @restaurant_category = RestaurantCategory.new(params[:restaurant_category])
    if @restaurant_category.save
      flash[:notice] =  'Restaurant category was successfully created.'
      redirect_to admin_restaurant_categories_path
    else
      render action: "new"
    end
  end

  def update
    @restaurant_category = RestaurantCategory.find(params[:id])
    if @restaurant_category.update_attributes(params[:restaurant_category])
      flash[:notice] = 'Restaurant category was successfully updated.'
      redirect_to admin_restaurant_categories_path
    else
      render action: "edit"
    end
  end

  def destroy
    authorize! :delete, RestaurantCategory
    @restaurant_category = RestaurantCategory.find(params[:id])
    @restaurant_category.destroy
    flash[:notice] = 'Restaurant category was successfully deleted.'
    redirect_to admin_restaurant_categories_path
  end

  def delete
    @restaurant_category = RestaurantCategory.find(params[:id])
    @restaurant_category.destroy
    flash[:notice] = 'Food category was successfully deleted.'
    redirect_to admin_restaurant_categories_path
  end

  private

  def get_sort_attribute_name(column_number)
  
    case column_number
    when 0
      return "category_name"
    else 
      return "id"  
    end

  end 
end
