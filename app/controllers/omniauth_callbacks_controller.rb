class OmniauthCallbacksController < Devise::OmniauthCallbacksController   
  
  def facebook     
    @user = Authentication.find_for_oauth(request.env["omniauth.auth"], current_user)      
    if @user.persisted?       
      sign_in(@user, :bypass => true) unless current_user
      redirect_to root_url
      set_flash_message(:notice, :success, :kind => "Facebook") if is_navigational_format?
    else
      session["devise.facebook_data"] = request.env["omniauth.auth"]
      redirect_to new_user_registration_url
    end
  end

  def twitter
    @user = Authentication.find_for_oauth(env['omniauth.auth'], current_user)

    if @user.persisted?       
      sign_in(@user, :bypass => true) unless current_user
      redirect_to root_url
      set_flash_message(:notice, :success, :kind => "Twitter") if is_navigational_format?
    else
      session["devise.twitter_data"] = request.env["omniauth.auth"]
      redirect_to new_user_registration_url
    end
  end  
end