class UserMailer < ActionMailer::Base
  default to: "support@campusbite.com"

  def contact_us(user)
  	@user = user
  	mail(from: @user["email"])
  end

  def join_us(user)
  	@user = user
  	mail(from: @user["email"])
  end

  def restaurant_suggestion(user)
  	@user = user
  	mail(from: @user["email"])
  end

  def campus_suggestion(user)
  	@user = user
  	mail(from: @user["email"])
  end
  
end
