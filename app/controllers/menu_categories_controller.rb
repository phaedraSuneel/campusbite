class MenuCategoriesController < ApplicationController

  def index
    @school = School.find(params[:school_id])
    @restaurant = @school.restaurants.find(params[:restaurant_id])
    @menu = @restaurant.menu
    @menu_categories = @menu.menu_categories
  end

  def show
    @school = School.find(params[:school_id])
    @restaurant = @school.restaurants.find(params[:restaurant_id])
    @menu = @restaurant.menu
    @menu_category= @menu.menu_categories.find(params[:id])
  end

  def new
    @school = School.find(params[:school_id])
    @restaurant = @school.restaurants.find(params[:restaurant_id])
    @menu = @restaurant.menu
    @menu_category = @menu.menu_categories.build
  end

  def edit
    @school = School.find(params[:school_id])
    @restaurant = @school.restaurants.find(params[:restaurant_id])
    @menu = @restaurant.menu
    @menu_category = @menu.menu_categories.find(params[:id])
  end

  def create
    @school = School.find(params[:school_id])
    @restaurant = @school.restaurants.find(params[:restaurant_id])
    @menu = @restaurant.menu
    @menu_category = @menu.menu_categories.build(params[:menu_category])

    if @menu_category.save
      flash[:notice] = 'Menu category was successfully created.'
      redirect_to school_restaurant_menu_index_path(@school, @restaurant)
    else
      render action: "new"
    end
  end

  def update
    @school = School.find(params[:school_id])
    @restaurant = @school.restaurants.find(params[:restaurant_id])
    @menu = @restaurant.menu
    @menu_category = @menu.menu_categories.find(params[:id])
    
    if @menu_category.update_attributes(params[:menu_category])
      flash[:notice] = 'Menu category was successfully updated.'
      redirect_to [@school,@restaurant,@menu,@menu_category]
    else
      render action: "edit"
    end
  end

  def destroy
    @school = School.find(params[:school_id])
    @restaurant = @school.restaurants.find(params[:restaurant_id])
    @menu = @restaurant.menu
    @menu_category = @menu.menu_categories.find(params[:id])
    @menu_category.destroy
    flash[:notice] = 'Menu category was successfully deleted.'
    redirect_to school_restaurant_menu_index_path(@school, @restaurant)
  end
end
