class ApplicationController < ActionController::Base
 before_filter :check_admin
 rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, :notice => "You are not authorize for this action"
  end	
 protect_from_forgery


 def check_admin
	if params[:controller] == 'admin'
	  unless current_user.user_admin?
	    return redirect_to "/"
	  end
	end
 end
end