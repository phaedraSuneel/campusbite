class RestaurantCategoriesController < ApplicationController
 
  def index
    authorize! :read, RestaurantCategory
    @restaurant_categories = RestaurantCategory.all
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
      redirect_to @restaurant_category
    else
      render action: "new"
    end
  end

  def update
    @restaurant_category = RestaurantCategory.new(params[:id])
    if @restaurant_category.update_attributes(params[:restaurant_category])
      flash[:notice] = 'Restaurant category was successfully updated.'
      redirect_to @restaurant_category
    else
      render action: "edit"
    end
  end

  def destroy
    authorize! :delete, RestaurantCategory
    @restaurant_category = RestaurantCategory.find(params[:id])
    @restaurant_category.destroy
    flash[:notice] = 'Restaurant category was successfully deleted.'
    redirect_to @restaurant_category
  end
  
end
