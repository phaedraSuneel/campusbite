class DashboardController < ApplicationController
	
	def account
		@favorites_restaurants = current_user.favorites.page(params[:page]).per(10)
		@orders = current_user.orders.page(params[:page]).per(10)
		@reviews = current_user.reviews.page(params[:page]).per(10)
		@cards = current_user.cards
	end

	def change_user_information
		@user = current_user
		if @user.update_attributes(params[:user])
			flash[:notice] = "User account successfully updated"
			redirect_to :back
		else
			flash[:waring] = "User account was not updated"
			redirect_to :back
		end
	end

	def change_user_password
		@user = current_user
		if @user.update_with_password(params[:user])
			flash[:notice] = "Password successfully updated"
			sign_in @user, :bypass => true
			redirect_to :back
		else
			flash[:warning] = "Password was not successfully updated"
			redirect_to :back
		end
	end

	def add_user_address
		@user = current_user
		@address = current_user.addresses.build(params[:address])
		if @address.save
			flash[:notice] = "Address successfully created"
			redirect_to :back
		else
			flash[:warning] = "Something wrong address not created"
			redirect_to :back
		end
	end 



	def building_field
    @school = School.find(params[:id])
    @builings = @school.buildings
    render(:partial => "/dashboard/get_building_field", :locals => {:@builings => @builings })
  end

  def delete_address
  	@address = Address.find params[:id]
  	@address.destroy
  	render :text => 'successfully'
  end

  def edit_user_address
  	@address = Address.find(params[:id])
  	if @address.update_attributes(params[:address])
  		flash[:notice] = "Address was successfully updated"
			redirect_to :back
  	else
  		flash[:warning] = "Something wrong address not updated"
			redirect_to :back
  	end
  end 

  def delete_review
  	@review = Review.find(params[:id])
  	@review.destroy
  	render :text => 'successfully'
  end

  def remove_review
  	@review = Review.find(params[:id])
  	if @review.destroy
  		flash[:notice] = "Rating remove successfully"
  		redirect_to :back
  	else
  		flash[:warning] = "Rating not remove"
  		redirect_to :back
  	end
  end

  def add_user_card
  	p params[:card]

  	
    Braintree::Configuration.environment = :sandbox
    Braintree::Configuration.merchant_id = "6q6zvwjk33nr2wh6"
    Braintree::Configuration.public_key = "z8wb4mz95s5hj74g"
    Braintree::Configuration.private_key = "fca0105a4b3e363f763ffc31a5d69ce8"
    @result = Braintree::CreditCard.create(
      :customer_id => current_user.customer_id,
      :number => params[:card_number],
      :expiration_year => params[:card]["expiration_date(1i)"],
      :expiration_month => params[:card]["expiration_date(2i)"]
    )
    p @result
    if @result.success? 
      @card = Card.new(params[:card])
      @card.user_id = current_user.id
      @card.masked_number = @result.credit_card.masked_number
      @card.unique_number_identifier = @result.credit_card.unique_number_identifier
      @card.card_type = @result.credit_card.card_type
      @card.token = @result.credit_card.token
      respond_to do |format|
        if @card.save
          flash[:notice] = 'Card was successfully created.'
          format.html { redirect_to :back}
        else
        	flash[:notice] = 'Card was successfully not created.'
          format.html { redirect_to :back}
        end
      end
    else
    	flash[:notice] = 'Invalid Card data'
      redirect_to :back
    end

  end
end
