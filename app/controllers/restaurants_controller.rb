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
    @restaurant.build_contact_info
    @restaurant.build_delivery_info
    @restaurant.build_order_info
    @restaurant.build_bank_info
    @restaurant.build_restaurant_info
    operation = @restaurant.build_operation
    pick_up = @restaurant.build_pick_up
    delivery = @restaurant.build_delivery
    
    operation.sechedules.build :day => "Monday"
    operation.sechedules.build :day => "Tuesday"
    operation.sechedules.build :day => "Wednesday"
    operation.sechedules.build :day => "Thursday"
    operation.sechedules.build :day => "Friday"
    operation.sechedules.build :day => "Saturday"
    operation.sechedules.build :day => "Sunday"

    pick_up.sechedules.build :day => "Monday"
    pick_up.sechedules.build :day => "Tuesday"
    pick_up.sechedules.build :day => "Wednesday"
    pick_up.sechedules.build :day => "Thursday"
    pick_up.sechedules.build :day => "Friday"
    pick_up.sechedules.build :day => "Saturday"
    pick_up.sechedules.build :day => "Sunday"

    delivery.sechedules.build :day => "Monday"
    delivery.sechedules.build :day => "Tuesday"
    delivery.sechedules.build :day => "Wednesday"
    delivery.sechedules.build :day => "Thursday"
    delivery.sechedules.build :day => "Friday"
    delivery.sechedules.build :day => "Saturday"
    delivery.sechedules.build :day => "Sunday"
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
      @restaurant.delivery_eta = params[:from_eta] + "-" +  params[:to_eta] + "Minutes" unless params[:from_eta].blank? and params[:to_eta].blank?
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

  def add_favorite
    if user_signed_in?
      restaurant = Restaurant.find(params[:id])
      unless !current_user.favorites.find_by_restaurant_id(params[:id]).blank?
        favorite = restaurant.favorites.create(:user_id => current_user.id)
        flash[:notice] = 'This restaurant has been added to your favorites'
      else   
        flash[:notice] = 'This restaurant has been already added to your favorites'
      end   
      redirect_to :back
    else
      flash[:notice] = 'please Sign In than add to favorite'
      redirect_to new_user_session_path
    end   
  end

  def new_review
    if user_signed_in?
      restaurant = Restaurant.find(params[:id])
      @review = restaurant.reviews.new(params[:review])
      if @review.save
        flash[:notice] = 'You Successfully review this restaurant'
        redirect_to :back
      else 
        flash[:notice] = 'Sorry you can not review this restaurant'
        redirect_to :back
      end
    else
      flash[:notice] = 'please Sign In than review this restaurant'
      redirect_to new_user_session_path
    end
  end

  def edit_review
    @review = Review.find(params[:id])
    if @review.update_attributes(params[:review])
      flash[:notice] = 'Review successfully updated'
      redirect_to :back
    else
      flash[:notice] = 'Review not updated'
      redirect_to :back
    end  
  end
end