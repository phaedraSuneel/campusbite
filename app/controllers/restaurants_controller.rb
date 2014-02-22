class RestaurantsController < ApplicationController

  def index
    @school = School.find(params[:school_id])
    @restaurants = @school.restaurants
  end

  def show
    @school = School.find(params[:school_id])
    @restaurant = @school.restaurants.find(params[:id])
  end

  def new
    @school = School.find(params[:school_id])
    @restaurant = @school.restaurants.build
  end

  def edit
    @school = School.find(params[:school_id])
    @restaurant = @school.restaurants.find(params[:id])
  end

  def create
    @school = School.find(params[:school_id])
    @restaurant = @school.restaurants.build(params[:restaurant])
    if @restaurant.save
      flash[:notice] = 'Restaurant was successfully created.'
      redirect_to [@school, @restaurant]
    else
      render action: "new"
    end
  end

  def update
    @school = School.find(params[:school_id])
    @restaurant = @school.restaurants.find(params[:id])
    if @restaurant.update_attributes(params[:restaurant])
      flash[:notice] = 'Restaurant was successfully updated.'
      redirect_to [@school, @restaurant]
    else
      render action: "edit"
    end
  end

  def destroy
    @school = School.find(params[:school_id])
    @restaurant = @school.restaurants.find(params[:id])
    @restaurant.destroy
    flash[:notice] = 'Restaurant was successfully deleted.'
    redirect_to [@school, @restaurant]
  end

end