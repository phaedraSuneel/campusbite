class WelcomeController < ApplicationController

  def index
    @banners = Banner.where(:image_type => "Slider Image")
    @subscribe = Subscribe.new
  end

 	def result
    if params[:clear]
      if current_user
        current_user.carts.destroy_all
      else
        if !cookies[:cart_token].blank?
          Cart.find_by_token(cookies[:cart_token]).destroy
          cookies.delete :cart_token
        end
      end
    end

    if !params[:search].blank?
      pick_up = params[:search][:is_pick_up] == '1' ?  1 : nil
      delivery = params[:search][:is_delivery] == '1' ?  1 : nil
      if params[:keyword].blank?
        @restaurants = Restaurant.search :sort_mode => :desc, :order => :ranking
        @restaurants = @restaurants.search :with => {:pick_up => pick_up } unless pick_up.nil?
        @restaurants = @restaurants.search :with => {:delivery => delivery } unless delivery.nil?
      elsif !params[:keyword].blank?
        @schools = School.search(params[:keyword])
        school_ids = @schools.collect(&:id).flatten
        @restaurants = Restaurant.search :with => {:school_id =>  school_ids }
        @restaurants = Restaurant.search params[:keyword] if school_ids.blank?
        @restaurants = @restaurants.search :sort_mode => :desc, :order => :ranking
        @restaurants = @restaurants.search :with => {:pick_up => pick_up } unless pick_up.nil?
        @restaurants = @restaurants.search :with => {:delivery => delivery } unless delivery.nil?
        @query = params[:keyword]
      end
    elsif !params[:keyword].blank?
      @restaurants = Restaurant.search params[:keyword]
      @restaurants = @restaurants.search :sort_mode => :desc, :order => :ranking
      @query = params[:keyword]
    else
      @restaurants = Restaurant.order("ranking desc")
    end
 	end

 	def menu
 		@restaurant =  Restaurant.find(params[:id])
 		@menu = @restaurant.menu
    @reviews = @restaurant.reviews
 	end

  def order
    @order = Order.find params[:id]
    if cookies[:guest_token].present?
      cookies.delete :guest_token
    end
  end

  def restaurant_search
    if !params[:category_id].blank?
      @restaurants = Restaurant.search params[:keyword], :with => {:restaurant_category_ids =>  [params[:category_id].to_i] }
    else
      @restaurants = Restaurant.search params[:keyword]
    end
    if params[:input]
      if (params[:input] == "best_match" or  params[:input] == "ranking")
        @restaurants = Restaurant.search :sort_mode => :desc, :order => :ranking

      elsif params[:input] == "delivery_free"
        @restaurants = @restaurants.search :conditions => {:delivery_charges =>  0.0}
      elsif params[:input] == "delivery_mini"
        @restaurants = @restaurants.search :sort_mode => :expr, :order => :min_order
      elsif params[:input] == "delivery_eta"
        @restaurants = @restaurants.search :sort_mode => :desc, :order => :delivery_eta
      elsif params[:input] == "sort_name"
        @restaurants = @restaurants.search :order => :restaurant_name
      elsif params[:input] == "ratings"
        @restaurants = @restaurants.search  :sort_mode => :extended, :order => 'rating DESC'
      else
        @restaurants = @restaurants.search :conditions => {:restaurant_name =>  params[:input]}
      end
    end
    render :partial => 'restaurant', collection: @restaurants
  end

  def contact_us
    @contact_us = ContactUs.new
  end

  def contact_us_save

    @contact_us = ContactUs.new(params[:contact_us])

    if @contact_us.save
      UserMailer.contact_us(@contact_us).deliver
      flash[:notice] = "Successfully email sent"
      redirect_to :back
    else
      flash[:warning] = "Fail to submit your request"
      render :action => 'contact_us'
    end
  end

  def restaurant_owners
    @join_us = JoinUs.new
  end

  def join_us
    @join_us = JoinUs.new(params[:join_us])

    if @join_us.save
      UserMailer.join_us(@join_us).deliver
      flash[:notice] = "Thank you for joining us we farword you request to our supporting team"
      redirect_to :back
    else
      flash[:warning] = "Joining request failed"
      render :action => 'restaurant_owners'
    end
  end

  def add_restaurant
    @restaurant = RestaurantSuggestion.new
  end

  def restaurant_suggestion
    @restaurant = RestaurantSuggestion.new(params[:restaurant_suggestion])
    if @restaurant.save
      UserMailer.restaurant_suggestion(@restaurant).deliver
      flash[:notice] = "Thank you for suggestion us we farword you request to our supporting team"
      redirect_to :back
    else
      flash[:warning] = "suggestion request failed"
      render :action => 'add_restaurant'
    end
  end
  def add_campus
    @campus = CampusSuggestion.new
  end

  def campus_suggestion
    @campus = CampusSuggestion.new(params[:campus_suggestion])
    if @campus.save
      UserMailer.campus_suggestion(@campus).deliver
      flash[:notice] = "Thank you for suggestion us we farword you request to our supporting team"
      redirect_to :back
    else
      flash[:warning] = "suggestion request failed"
      render :action => 'add_campus'
    end
  end

  def careers
    @careers = Career.all
  end

  def faqs
    @faqs = Faq.all
  end

  def term_of_service
    @term_of_service = TermOfServicePage.last
  end

  def remove_subscriber
    if params[:subscriber][:email].present?
      @subscriber = Subscribe.where(email: params[:subscriber][:email]).first
      unless @subscriber.nil?
        @subscriber.destroy
        flash[:notice] = "Successfully unsubscribe from our site"
        redirect_to '/'
      else
        flash[:warning] = "This email owner is not subscribe for our site"
        render :action => "unsubscribe"
      end
    else
      flash[:warning] = "Please insert email address"
      render :action => "unsubscribe"
    end
  end

  def reward_points
    @reward_points = Redeam.all
  end

  def request_for_redeam
    @redeam = Redeam.where(item_id: params[:redeam][:item_id]).first
    if current_user.email == params[:redeam][:email]
      if current_user.can_make_redeam_request?(params[:redeam][:item_id])
        @redeam_request = RedeamRequest.new(params[:redeam])
        if @redeam_request.save
          UserMailer.redeam_request(params[:redeam]).deliver
          @error = false
        else
          @error = true
        end
      else
        @error = true
      end
    else
      @error = true
    end
    respond_to do |format|
      format.js
    end
  end

  def menu_error_request
    @menu_error = MenuError.new(params[:menu_error])
    if @menu_error.save
      if UserMailer.menu_error_request(params[:menu_error]).deliver
        flash[:notice] = "Your menu error request Successfully sent to our support team"
      else
        flash[:warning] = "Sorry your error request couldn't send to our support team please try again"
      end
    else
      flash[:warning] = "Sorry your error request couldn't send to our support team please try again"
    end
    redirect_to :back
  end


  def guest_registration
    @guest = Guest.new(params[:guest])
    if @guest.save
      cookies[:guest_token] = SecureRandom.urlsafe_base64(nil, false)
      @cookie_cart=Cart.find_by_token(cookies[:cart_token])
      @cookie_cart.guest_id = @guest.id
      @cookie_cart.token = nil
      @cookie_cart.save
      cookies.delete :cart_token
    end
    respond_to do |format|
      format.js
    end
  end
end
