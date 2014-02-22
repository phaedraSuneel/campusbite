class MenuController < ApplicationController
  
  def index
    @school = School.find(params[:school_id])
    @restaurant = @school.restaurants.find(params[:restaurant_id])
    @menu = @restaurant.menu   
  end

  def show
    @school = School.find(params[:school_id])
    @restaurant = @school.restaurants.find(params[:restaurant_id])
    @menu = @restaurant.menu
  end

  def new
    @school = School.find(params[:school_id])
    @restaurant = @school.restaurants.find(params[:restaurant_id])
    @menu = @restaurant.menu.build
  end

  def edit
    @school = School.find(params[:school_id])
    @restaurant = @school.restaurants.find(params[:restaurant_id])
    @menu = @restaurant.menu
  end

  def create
    @school = School.find(params[:school_id])
    @restaurant = @school.restaurants.find(params[:restaurant_id])
    @menu = @restaurant.menu.build(params[:menu])

    if @menu.save
      flash[:notice] = 'Menu was successfully created'
      redirect_to [@school, @restaurant, @menu]
    else
      render action: "new"
    end
  end

  def update
    @school = School.find(params[:school_id])
    @restaurant = @school.restaurants.find(params[:restaurant_id])
    @menu = @restaurant.menu
    if @menu.update_attributes(params[:menu])
      flash[:notice] = 'Menu was successfully updated.'
      redirect_to [@school, @restaurant, @menu]
    else
      render action: "edit"
    end
  end

  def destroy
    @school = School.find(params[:school_id])
    @restaurant = @school.restaurants.find(params[:restaurant_id])
    @menu = @restaurant.menu
    @menu.destroy
    flash[:notice] = 'Menu was successfully deleted.'
    redirect_to [@school, @restaurant, @menu]
  end

end
