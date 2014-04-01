class CardController < ApplicationController
  def new
    @card = Card.new
  end

  def create
    Braintree::Configuration.environment = :sandbox
    Braintree::Configuration.merchant_id = "dd5pnqs3x3gpjbtw"
    Braintree::Configuration.public_key = "88gctg82n6bzz5gt"
    Braintree::Configuration.private_key = "72d920c969f5dbbe49358cb4eebeebde"

    @result = Braintree::CreditCard.create(
      :customer_id => current_user.profile.customer_id,
      :number => params[:card][:card_no],
      :expiration_date => params[:card][:expiration_date]
    )
    if @result.success? 
      @card = Card.new(params[:card])
      @card.user_id = current_user.id
      @card.masked_number = @result.credit_card.masked_number
      @card.unique_number_identifier = @result.credit_card.unique_number_identifier
      @card.card_type = @result.credit_card.card_type
      @card.image_url = @result.credit_card.image_url
      @card.token = @result.credit_card.token
      respond_to do |format|
        if @card.save
          flash[:notice] = 'Card was successfully created.'
          format.html { redirect_to :back}
        else
          format.html { redirect_to :back}
        end
      end
    else
      redirect_to :back
    end  
  end

  def update
    cards = current_user.cards
    cards.each do |card|
      card.use_default = false
      card.save
    end
    card = Card.find_by_id(params[:default])
    card.use_default = true
    respond_to do |format|
      if card.save
        flash[:notice] = 'Card was successfully updated.'
        format.html { redirect_to :back }
      else
        flash[:error] = 'Error in updating Card.'
        format.html { redirect_to :back}
      end
    end
  end
end
