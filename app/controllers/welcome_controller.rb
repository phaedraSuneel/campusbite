class WelcomeController < ApplicationController
 
 	def result
 		unless params.blank?
      @search = School.search do
        with(:is_pick_up, params[:is_pick_up]) unless params[:is_pick_up].blank?
        with(:is_deliver, params[:is_deliver]) unless params[:is_deliver].blank?
        fulltext params[:keyword] do 
          fields(:school_name)
        end
      end  
      @schools = @search.results
    else
      @schools = School.all
    end 
 	end

 	def menu
 		@restaurant =  Restaurant.find(params[:id])
 		@menu = @restaurant.menu
 	end
end
