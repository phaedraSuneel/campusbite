class WelcomeController < ApplicationController
  
  def index
    @banners = Banner.where(:image_type => "Slider Image")
    @subscribe = Subscribe.new
  end

 	def result
    if !params[:search].blank?
      pick_up = params[:search][:is_pick_up] == "1" ? 1 : nil
      delivery = params[:search][:is_delivery] == "1" ? 1 : nil
      if params[:keyword].blank?
        @restaurants = Restaurant.search :with => {:pick_up => pick_up } unless pick_up.nil?
        @restaurants = Restaurant.search :with => {:delivery => delivery } unless delivery.nil?
      elsif !params[:keyword].blank?
        @restaurants = Restaurant.search params[:keyword]
        @restaurants = @restaurants.search :with => {:pick_up => pick_up } unless pick_up.nil?
        @restaurants = @restaurants.search :with => {:delivery => delivery } unless delivery.nil?
        @query = params[:keyword]
      end
    elsif !params[:keyword].blank?
      @restaurants = Restaurant.search params[:keyword]
      @query = params[:keyword]
    else
      @restaurants = Restaurant.all
    end   
 	end

 	def menu
 		@restaurant =  Restaurant.find(params[:id])
 		@menu = @restaurant.menu
 	end

  def order
    @order = Order.find params[:id]
  end

  def restaurant_search
    if !params[:category_id].blank?
      @restaurants = Restaurant.search params[:keyword], :with => {:restaurant_category_ids =>  [params[:category_id].to_i] }
    else 
      @restaurants = Restaurant.search params[:keyword]
    end  
    if params[:input]
      if params[:input] == "best_match"
        @restaurants = Restaurant.search params[:keyword]
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

  def restaurant_suggestion
    if  UserMailer.restaurant_suggestion(params[:user]).deliver
      flash[:notice] = "Thank you for suggestion us we farword you request to our supporting team"
      redirect_to :back
    else
      flash[:warning] = "suggestion request failed"
      redirect_to :back
    end
  end

  def campus_suggestion
    if  UserMailer.campus_suggestion(params[:user]).deliver
      flash[:notice] = "Thank you for suggestion us we farword you request to our supporting team"
      redirect_to :back
    else
      flash[:warning] = "suggestion request failed"
      redirect_to :back
    end
  end
end