class RestaurantOffersController < ApplicationController
  # GET /restaurant_offers
  # GET /restaurant_offers.json
  def index
    @restaurant_offers = RestaurantOffer.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @restaurant_offers }
    end
  end

  # GET /restaurant_offers/1
  # GET /restaurant_offers/1.json
  def show
    @restaurant_offer = RestaurantOffer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @restaurant_offer }
    end
  end

  # GET /restaurant_offers/new
  # GET /restaurant_offers/new.json
  def new
    @restaurant_offer = RestaurantOffer.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @restaurant_offer }
    end
  end

  # GET /restaurant_offers/1/edit
  def edit
    @restaurant_offer = RestaurantOffer.find(params[:id])
  end

  # POST /restaurant_offers
  # POST /restaurant_offers.json
  def create
    @restaurant_offer = RestaurantOffer.new(params[:restaurant_offer])

    respond_to do |format|
      if @restaurant_offer.save
        format.html { redirect_to @restaurant_offer, notice: 'Restaurant offer was successfully created.' }
        format.json { render json: @restaurant_offer, status: :created, location: @restaurant_offer }
      else
        format.html { render action: "new" }
        format.json { render json: @restaurant_offer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /restaurant_offers/1
  # PUT /restaurant_offers/1.json
  def update
    @restaurant_offer = RestaurantOffer.find(params[:id])

    respond_to do |format|
      if @restaurant_offer.update_attributes(params[:restaurant_offer])
        format.html { redirect_to @restaurant_offer, notice: 'Restaurant offer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @restaurant_offer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /restaurant_offers/1
  # DELETE /restaurant_offers/1.json
  def destroy
    @restaurant_offer = RestaurantOffer.find(params[:id])
    @restaurant_offer.destroy

    respond_to do |format|
      format.html { redirect_to restaurant_offers_url }
      format.json { head :no_content }
    end
  end
end
