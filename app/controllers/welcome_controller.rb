class WelcomeController < ApplicationController
 
 	def result
 		unless params[:search].blank?
 			pick_up = params[:search][:is_pick_up] == "1" ? 1 : nil
			delivery = params[:search][:is_delivery] == "1" ? 1 : nil
 			if !params[:keyword].blank? and !params[:category_id].blank?
    		@restaurants = Restaurant.search params[:keyword], :with => {:restaurant_category_ids =>  [params[:category_id].to_i] }
    		@restaurants = @restaurants.search :with => {:pick_up => pick_up } unless pick_up.nil?
    		@restaurants = @restaurants.search :with => {:delivery => delivery } unless delivery.nil?	
    		@query = @restaurants.facets.query
    	elsif !params[:category_id].blank?	
    		@restaurants = Restaurant.search :with => {:restaurant_category_ids =>  [params[:category_id].to_i]}		
    	elsif !params[:keyword].blank?
    		@restaurants = Restaurant.search params[:keyword] 
    		@restaurants = @restaurants.search :with => {:pick_up => pick_up } unless pick_up.nil?
    		@restaurants = @restaurants.search :with => {:delivery => delivery } unless delivery.nil?
    		@query = params[:keyword]					
    	else
    		@restaurants = Restaurant.all
  		end
	  end 	


	 #  unless params[:advance_search].blank?
		# 	p params[:advance_search]	  	
	 #  	free = params[:advance_search][:delivery_free] == "1" ? 0.0 : nil
	 #  	mini = params[:advance_search][:delivery_free] == "1" ? 1 : nil

	 #  	scope = Restaurant.search params[:keyword]
	 #  	#@restaurants = scope.search :conditions => {:delivery_charges =>  free} unless free.nil?
	 #  	p @restaurants
	 #  	@restaurants = scope.search :conditions => {:delivery_mini =>  mini} unless mini.nil?
	 #  	@query = params[:keyword]	
	 #  end
	 #  p @restaurants
 	end

 	def menu
 		@restaurant =  Restaurant.find(params[:id])
 		@menu = @restaurant.menu
 	end
end