class RestaurantCategoriesController < ApplicationController
 
  def index
    @school = School.find(params[:school_id])
    @restaurant = @school.restaurants.find(params[:restaurant_id])
    @restaurant_categories = @restaurant.restaurant_categories
  end

  def show
    params[:school_id]
    @school = School.find(params[:school_id])
    @restaurant = @school.restaurants.find(params[:restaurant_id])
    @restaurant_category = @restaurant.restaurant_categories.find(params[:id])
  end

  def new
    @school = School.find(params[:school_id])
    @restaurant = @school.restaurants.find(params[:restaurant_id])
    @restaurant_category = @restaurant.restaurant_categories.build
  end

  def edit
    @school = School.find(params[:school_id])
    @restaurant = @school.restaurants.find(params[:restaurant_id])
    @restaurant_category = @restaurant.restaurant_categories.find(params[:id])
  end

  def create
    @school = School.find(params[:school_id])
    @restaurant = @school.restaurants.find(params[:restaurant_id])
    @restaurant_category = @restaurant.restaurant_categories.build(params[:restaurant_category])
    if @restaurant_category.save
      flash[:notice] =  'Restaurant category was successfully created.'
      redirect_to [@school, @restaurant, @restaurant_category]
    else
      render action: "new"
    end
  end

  def update
    @school = School.find(params[:school_id])
    @restaurant = @school.restaurants.find(params[:restaurant_id])
    @restaurant_category = @restaurant.restaurant_categories.find(params[:id])
    if @restaurant_category.update_attributes(params[:restaurant_category])
      flash[:notice] = 'Restaurant category was successfully updated.'
      redirect_to [@school, @restaurant, @restaurant_category]
    else
      render action: "edit"
    end
  end

  def destroy
    @school = School.find(params[:school_id])
    @restaurant = @school.restaurants.find(params[:restaurant_id])
    @restaurant_category = @restaurant.restaurant_categories.find(params[:id])
    @restaurant_category.destroy
    flash[:notice] = 'Restaurant category was successfully deleted.'
    redirect_to [@school, @restaurant, @restaurant_category]
  end
  
end
