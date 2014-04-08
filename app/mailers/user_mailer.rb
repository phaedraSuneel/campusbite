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

  def restaurant_admin(contact_us)
    @user = User.find(contact_us[:user_id])
    mail(to: 'admin@ordering.com', from: @user.email, subject: contact_us[:subject], message: contact_us[:message])
  end    
  
end
