class Admin::CouponsController < ApplicationController
  # GET /coupons
  def index
    @coupons = Coupon.all

    respond_to do |format|
      format.html # index.html.erb
    end
  end

  # GET /coupons/1
  def show
    @coupon = Coupon.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
    end
  end

  # GET /coupons/new
  def new
    @coupon = Coupon.new

    respond_to do |format|
      format.html # new.html.erb
    end
  end

  # GET /coupons/1/edit
  def edit
    @coupon = Coupon.find(params[:id])
  end

  # POST /coupons
  def create
    @coupon = Coupon.new(params[:coupon])

    respond_to do |format|
      if @coupon.save
        format.html { redirect_to admin_coupons_path, notice: 'Coupon was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  # PUT /coupons/1
  def update
    @coupon = Coupon.find(params[:id])

    respond_to do |format|
      if @coupon.update_attributes(params[:coupon])
        format.html { redirect_to admin_coupons_path, notice: 'Coupon was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  # DELETE /coupons/1
  def destroy
    @coupon = Coupon.find(params[:id])
    @coupon.destroy

    respond_to do |format|
      format.html { redirect_to admin_coupons_url }
    end
  end
end
