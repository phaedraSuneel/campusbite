class WelcomeController < ApplicationController
 
 	def result
 		unless params[:search].blank?
 			pick_up = params[:search][:is_pick_up] == "1" ? 1 : nil
			delivery = params[:search][:is_delivery] == "1" ? 1 : nil
			free = params[:search][:delivery_free] == "1" ? 0.0 : nil
			mini = params[:search][:delivery_mini] == "1" ? 1 : nil
      sort = params[:search][:sort_name] == "1" ? 1 : nil
      eta = params[:search][:delivery_eta] == "1" ? 1 : nil

      restaurant_name = !params[:search][:restaurant_name].blank? ? params[:search][:restaurant_name] : nil
      
 			if !params[:keyword].blank? and !params[:category_id].blank?
    		@restaurants = Restaurant.search params[:keyword], :with => {:restaurant_category_ids =>  [params[:category_id].to_i] }
    		@restaurants = @restaurants.search :with => {:pick_up => pick_up } unless pick_up.nil?
    		@restaurants = @restaurants.search :with => {:delivery => delivery } unless delivery.nil?	
    		@restaurants = @restaurants.search :conditions => {:delivery_charges =>  free} unless free.nil?
    		@restaurants = @restaurants.search :sort_mode => :expr, :order => :delivery_mini unless mini.nil?
        @restaurants = @restaurants.search :conditions => {:restaurant_name =>  restaurant_name} unless restaurant_name.nil?
    		@restaurants = @restaurants.search :order => :restaurant_name unless sort.nil?
        @restaurants = @restaurants.search :sort_mode => :desc, :order => :delivery_eta unless eta.nil?
        @query = @restaurants.facets.query
    	elsif !params[:category_id].blank?	
    		@restaurants = Restaurant.search :with => {:restaurant_category_ids =>  [params[:category_id].to_i]}		
    		@restaurants = @restaurants.search :conditions => {:delivery_charges =>  free} unless free.nil?
    		@restaurants = @restaurants.search :sort_mode => :expr, :order => :delivery_mini unless mini.nil?
        @restaurants = @restaurants.search :conditions => {:restaurant_name =>  restaurant_name} unless restaurant_name.nil?
        @restaurants = @restaurants.search :order => :restaurant_name unless sort.nil?
        @restaurants = @restaurants.search :sort_mode => :desc, :order => :delivery_eta unless eta.nil?
    	elsif !params[:keyword].blank?
    		@restaurants = Restaurant.search params[:keyword] 
    		@restaurants = @restaurants.search :with => {:pick_up => pick_up } unless pick_up.nil?
    		@restaurants = @restaurants.search :with => {:delivery => delivery } unless delivery.nil?
    		@restaurants = @restaurants.search :conditions => {:delivery_charges =>  free} unless free.nil?
    		@restaurants = @restaurants.search :sort_mode => :expr, :order => :delivery_mini unless mini.nil?
        @restaurants = @restaurants.search :conditions => {:restaurant_name =>  restaurant_name} unless restaurant_name.nil?
        @restaurants = @restaurants.search :order => :restaurant_name unless sort.nil?
        @restaurants = @restaurants.search :sort_mode => :desc, :order => :delivery_eta unless eta.nil?
    		@query = params[:keyword]	
    	elsif !free.nil?
    		@restaurants = Restaurant.search :conditions => {:delivery_charges =>  free}
    	elsif !mini.nil?
    		@restaurants = Restaurant.search :sort_mode => :expr, :order => :delivery_mini 
      elsif !restaurant_name.nil?
        @restaurants = Restaurant.search :conditions => {:restaurant_name =>  restaurant_name}
      elsif !sort.nil?
       @restaurants = Restaurant.search :order => :restaurant_name
      elsif !eta.nil?
        @restaurants = Restaurant.search :sort_mode => :desc, :order => :delivery_eta
    	else
    		@restaurants = Restaurant.all
  		end
	  end 	
	  p @restaurants
 	end

 	def menu
 		@restaurant =  Restaurant.find(params[:id])
 		@menu = @restaurant.menu
 	end
end