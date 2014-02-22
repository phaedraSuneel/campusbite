class MenuItemsController < ApplicationController

  def index
    @school = School.find(params[:school_id])
    @restaurant = @school.restaurants.find(params[:restaurant_id])
    @menu = @restaurant.menu
    @menu_category = @menu.menu_categories.find(params[:menu_category_id])
    @menu_items = @menu_category.menu_items
  end

  def show
    @school = School.find(params[:school_id])
    @restaurant = @school.restaurants.find(params[:restaurant_id])
    @menu = @restaurant.menu
    @menu_category = @menu.menu_categories.find(params[:menu_category_id])
    @menu_item = @menu_category.menu_items.find(params[:id])
  end

  def new
    @school = School.find(params[:school_id])
    @restaurant = @school.restaurants.find(params[:restaurant_id])
    @menu = @restaurant.menu
    @menu_category = @menu.menu_categories.find(params[:menu_category_id])
    @menu_item = @menu_category.menu_items.build
  end

  def edit
    @school = School.find(params[:school_id])
    @restaurant = @school.restaurants.find(params[:restaurant_id])
    @menu = @restaurant.menu
    @menu_category = @menu.menu_categories.find(params[:menu_category_id])
    @menu_item = @menu_category.menu_items.find(params[:id])
  end

  def create
    @school = School.find(params[:school_id])
    @restaurant = @school.restaurants.find(params[:restaurant_id])
    @menu = @restaurant.menu
    @menu_category = @menu.menu_categories.find(params[:menu_category_id])
    @menu_item = @menu_category.menu_items.build(params[:menu_item])
    if @menu_item.save
      flash[:notice] =  'Menu item was successfully created.'
      redirect_to school_restaurant_menu_index_path(@school, @restaurant)
    else
      render action: "new"
    end
  end  

  def update
    @school = School.find(params[:school_id])
    @restaurant = @school.restaurants.find(params[:restaurant_id])
    @menu = @restaurant.menu
    @menu_category = @menu.menu_categories.find(params[:menu_category_id])
    @menu_item = @menu_category.menu_items.find(params[:id])
    if @menu_item.update_attributes(params[:menu_item])
      flash[:notice] =  'Menu item was successfully updated.'
      redirect_to school_restaurant_menu_index_path(@school, @restaurant)
    else
      render action: "edit"
    end
  end

  def destroy
    school = School.find(params[:school_id])
    @restaurant = @school.restaurants.find(params[:restaurant_id])
    @menu = @restaurant.menu
    @menu_category = @menu.menu_categories.find(params[:menu_category_id])
    @menu_item = @menu_category.menu_items.find(params[:id])
    @menu_item.destroy
    flash[:notice] =  'Menu item was successfully delete.'
    redirect_to school_restaurant_menu_index_path(@school, @restaurant)
  end
end
