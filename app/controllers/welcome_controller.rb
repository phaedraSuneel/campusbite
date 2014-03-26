class WelcomeController < ApplicationController
 
 	def result
    if !params[:search].blank?
      pick_up = params[:search][:is_pick_up] == "1" ? 1 : nil
      delivery = params[:search][:is_delivery] == "1" ? 1 : nil
      if params[:keyword].blank?
        @restaurants = Restaurant.search :with => {:pick_up => pick_up } unless pick_up.nil?
        @restaurants = @restaurants.search :with => {:delivery => delivery } unless delivery.nil?
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
        p @restaurants
      elsif params[:input] == "delivery_mini"
        @restaurants = @restaurants.search :sort_mode => :expr, :order => :min_order 
      elsif params[:input] == "delivery_eta"
        @restaurants = @restaurants.search :sort_mode => :desc, :order => :delivery_eta
      elsif params[:input] == "sort_name"
        @restaurants = @restaurants.search :order => :restaurant_name
      else
        @restaurants = @restaurants.search :conditions => {:restaurant_name =>  params[:input]}
      end  
    end
    render :partial => 'restaurant', collection: @restaurants
  end 

end