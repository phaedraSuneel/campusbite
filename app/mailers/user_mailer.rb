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
    @support = contact_us
    mail(to: 'admin@ordering.com', from: @user.email, subject: "Restaurant Support Resquest")
  end    
  
  def new_order(order,order_reciept)
    @order_reciept = order_reciept
    mail(to: order.restaurant.order_email, cc: order.restaurant.admin_email, from: "support@campusbite.com", subject: "New Order Placement")
  end  

  def order_confirmation(email)
    mail(to: email, from: "support@campusbite.com", subject: "Order Confirm", message: "Thank you for order. Your order has been confirmed by restaurant," )
  end
end
