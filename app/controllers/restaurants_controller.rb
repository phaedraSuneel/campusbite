class RestaurantsController < ApplicationController

  def index
    authorize! :read, Restaurant
    unless params[:school_id].blank?
      @school = School.find(params[:school_id])
      @restaurants = @school.restaurants
    else
      @restaurants = Restaurant.all
    end  
  end

  def show
    authorize! :read, Restaurant
    unless params[:school_id].blank?
      @school = School.find(params[:school_id])
      @restaurant = @school.restaurants.find(params[:id])
    else
      @restaurant = Restaurant.find(params[:id])
    end
  end

  def new
    authorize! :create, Restaurant
    unless params[:school_id].blank?
      @school = School.find(params[:school_id])
      @restaurant = @school.restaurants.build
    else
      @restaurant = Restaurant.new
    end

  end

  def edit
    authorize! :update, Restaurant
    unless params[:school_id].blank?
      @school = School.find(params[:school_id])
      @restaurant = @school.restaurants.find(params[:id])
    else
      @restaurant = Restaurant.find(params[:id])
    end
  end

  def create
    unless params[:school_id].blank?
      @school = School.find(params[:school_id])
      @restaurant = @school.restaurants.build(params[:restaurant])
      if @restaurant.save
      flash[:notice] = 'Restaurant was successfully created.'
      redirect_to [@school, @restaurant]  
      else
        render action: "new"
      end
    else 
      @restaurant = Restaurant.new(params[:restaurant])
      if @restaurant.save
        flash[:notice] = 'Restaurant was successfully created.'
        redirect_to @restaurant  
      else
        render action: "new"
      end  
    end  
  end

  def update
    unless params[:school_id].blank?
      @school = School.find(params[:school_id])
      @restaurant = @school.restaurants.find(params[:id])
      if @restaurant.update_attributes(params[:restaurant])
        flash[:notice] = 'Restaurant was successfully updated.'
        redirect_to [@school, @restaurant]
      else
        render action: "edit"
      end
    else
      @restaurant = Restaurant.find(params[:id])
      if @restaurant.update_attributes(params[:restaurant])
        flash[:notice] = 'Restaurant was successfully updated.'
        redirect_to @restaurant
      else
        render action: "edit"
      end
    end  
  end

  def destroy
    authorize! :delete, Restaurant
    unless params[:school_id].blank?
      @school = School.find(params[:school_id])
      @restaurant = @school.restaurants.find(params[:id])
      @restaurant.destroy
      flash[:notice] = 'Restaurant was successfully deleted.'
      redirect_to [@school, @restaurant]
    else
      @restaurant = Restaurant.find(params[:id])
      @restaurant.destroy
      flash[:notice] = 'Restaurant was successfully deleted'
      redirect_to @restaurant
    end
  end  

end