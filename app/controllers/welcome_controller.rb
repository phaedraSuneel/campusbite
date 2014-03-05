class WelcomeController < ApplicationController
 
 	def result
 		unless params[:keyword].blank?
      @schools = School.search(params[:keyword])
    else
      @schools = School.all
    end 
 	end

 	def menu
 		@restaurant =  Restaurant.find(params[:id])
 		@menu = @restaurant.menu
 	end

  def order
    
  end 

end