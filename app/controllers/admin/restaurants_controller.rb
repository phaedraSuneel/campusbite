class Admin::RestaurantsController < ApplicationController

  after_filter :rollback_if_not_admin, :only => [:update]
  
  def rollback_if_not_admin
    unless current_user.user_admin?
      version = @restaurant.versions.count
      @restaurant.reset_to!(1)
      @restaurant.status = "pending"
      flash[:notice] = "Your changes will be reflected once an admin has reviewed them"
    end
  end  

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
    @restaurant.build_user
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
      redirect_to admin_school_restaurant_path(@school, @restaurant)
      else
        render action: "new"
      end
    else 
      @restaurant = Restaurant.new(params[:restaurant])
      @restaurant.delivery_eta = params[:from_eta] + "-" +  params[:to_eta] + "Minutes" unless params[:from_eta].blank? and params[:to_eta].blank?
      if @restaurant.save
        flash[:notice] = 'Restaurant was successfully created.'
        redirect_to admin_restaurant_path(@restaurant)
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
        redirect_to admin_school_restaurant_path(@school, @restaurant)
      else
        render action: "edit"
      end
    else
      @restaurant = Restaurant.find(params[:id])
      if @restaurant.update_attributes(params[:restaurant])
        flash[:notice] = 'Restaurant was successfully updated.'
        redirect_to admin_restaurant_path(@restaurant)
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
      redirect_to admin_school_restaurants_path(@school)
    else
      @restaurant = Restaurant.find(params[:id])
      @restaurant.destroy
      flash[:notice] = 'Restaurant was successfully deleted'
      redirect_to admin_restaurants_path
    end
  end

  def order
    @restaurant = Restaurant.find(params[:id])
    @orders= @restaurant.orders.order("created_at desc").page(params[:page]).per(5)
  end

  def order_detail
    @order = Order.find(params[:id])
  end

  def accept_request
    @sechedule = Sechedule.find(params[:id])
    version = @sechedule.versions.count
    @sechedule.revert_to!(version)
    flash[:notice] = "sechedule Information resquest accepted.."
    redirect_to :back
  end

  def reject_request
    @sechedule = Sechedule.find(params[:id])
    @sechedule.revert_to!(1)
    flash[:notice] = "sechedule Information resquest rejected.."
    redirect_to :back
  end

end