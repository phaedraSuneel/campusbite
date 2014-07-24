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
    page = params[:draw].nil? ? 1 : params[:draw].to_i
    limit = params[:length].to_i
    offset = params[:start].to_i

    unless params[:school_id].blank?
      @school = School.find(params[:school_id])
      @restaurants = @school.restaurants.offset(offset).limit(limit)
    else
      @restaurants = Restaurant.offset(offset).limit(limit)
    end

    unless params[:order].nil?
      col_number = params[:order]["0"]["column"].to_i
      order_by_type  = params[:order]["0"]["dir"]
      attribute_name = get_all_sort_attribute_name(col_number)
      sorting_query = [attribute_name,order_by_type].join(' ')
      @restaurants  = Restaurant.apply_order_filter_with_school(@restaurants , sorting_query)
    end

    unless params[:search].nil?
      @restaurants  = Restaurant.apply_search_filter_new(@restaurants , params[:search][:value])
    end

    respond_to do |format|
      format.json do
        return render :json =>  {draw: page,  recordsTotal: @restaurants.count,  recordsFiltered: @restaurants.count , :data => @restaurants.collect{|a| [a.restaurant_name, a.ranking, "<a src='#{admin_restaurant_url(a)}'><span class='label label-sm label-success'> show </a>", "<a src='#{edit_admin_restaurant_url(a)}'><span class='label label-sm label-default'> edit </a>", "<a src='#{delete_admin_restaurant_url(a)}' data-confirm='Are you sure?' data-method = 'delete' rel='nofollow'><span class='label label-sm label-danger'> delete </a>" ]} }
      end
      format.html
    end

  end

  def show
    unless params[:school_id].blank?
      @school = School.find(params[:school_id])
      @restaurant = @school.restaurants.find(params[:id])
    else
      @restaurant = Restaurant.find(params[:id])
    end
  end

  def new
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
    @restaurant.restaurant_coupons.build
    operation = @restaurant.build_operation
    pick_up = @restaurant.build_pick_up
    delivery = @restaurant.build_delivery

    schedule =  operation.sechedules.build :day => "Monday"
    schedule.build_break_schedule
    schedule =  operation.sechedules.build :day => "Tuesday"
    schedule.build_break_schedule
    schedule =  operation.sechedules.build :day => "Wednesday"
    schedule.build_break_schedule
    schedule =  operation.sechedules.build :day => "Thursday"
    schedule.build_break_schedule
    schedule =  operation.sechedules.build :day => "Friday"
    schedule.build_break_schedule
    schedule =  operation.sechedules.build :day => "Saturday"
    schedule.build_break_schedule
    schedule =  operation.sechedules.build :day => "Sunday"
    schedule.build_break_schedule

    schedule = pick_up.sechedules.build :day => "Monday"
    schedule.build_break_schedule
    schedule = pick_up.sechedules.build :day => "Tuesday"
    schedule.build_break_schedule
    schedule = pick_up.sechedules.build :day => "Wednesday"
    schedule.build_break_schedule
    schedule = pick_up.sechedules.build :day => "Thursday"
    schedule.build_break_schedule
    schedule = pick_up.sechedules.build :day => "Friday"
    schedule.build_break_schedule
    schedule = pick_up.sechedules.build :day => "Saturday"
    schedule.build_break_schedule
    schedule = pick_up.sechedules.build :day => "Sunday"
    schedule.build_break_schedule

    schedule = delivery.sechedules.build :day => "Monday"
    schedule.build_break_schedule
    schedule = delivery.sechedules.build :day => "Tuesday"
    schedule.build_break_schedule
    schedule = delivery.sechedules.build :day => "Wednesday"
    schedule.build_break_schedule
    schedule = delivery.sechedules.build :day => "Thursday"
    schedule.build_break_schedule
    schedule = delivery.sechedules.build :day => "Friday"
    schedule.build_break_schedule
    schedule = delivery.sechedules.build :day => "Saturday"
    schedule.build_break_schedule
    schedule = delivery.sechedules.build :day => "Sunday"
    schedule.build_break_schedule
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

  def delete
    authorize! :delete, Restaurant
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
    flash[:notice] = 'Restaurant was successfully deleted'
    redirect_to admin_restaurants_path
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

  private

  def get_all_sort_attribute_name(column_number)

    case column_number
    when 0
      return "restaurant_name"
    when 1
       return "ranking"
    else
      return "id"
    end

  end

end