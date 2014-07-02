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

  def redeam_request(redeam)
    @redeam = redeam
    mail(to: 'admin@ordering.com', from: @redeam["email"], subject: "Redeam Resquest")
  end

  def restaurant_admin(user,contact_us)
    @user = user
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
