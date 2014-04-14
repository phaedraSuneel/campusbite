class Admin::RestaurantCouponsController < AdminController
  # GET /restaurant_coupons
  # GET /restaurant_coupons.json
  def index
    @restaurant_coupons = RestaurantCoupon.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @restaurant_coupons }
    end
  end

  # GET /restaurant_coupons/1
  # GET /restaurant_coupons/1.json
  def show
    @restaurant_coupon = RestaurantCoupon.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @restaurant_coupon }
    end
  end

  # GET /restaurant_coupons/new
  # GET /restaurant_coupons/new.json
  def new
    @restaurant_coupon = RestaurantCoupon.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @restaurant_coupon }
    end
  end

  # GET /restaurant_coupons/1/edit
  def edit
    @restaurant_coupon = RestaurantCoupon.find(params[:id])
  end

  # POST /restaurant_coupons
  # POST /restaurant_coupons.json
  def create
    @restaurant_coupon = RestaurantCoupon.new(params[:restaurant_coupon])

    respond_to do |format|
      if @restaurant_coupon.save
        format.html { redirect_to admin_restaurant_coupon_path(@restaurant_coupon), notice: 'Restaurant coupon was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  # PUT /restaurant_coupons/1
  # PUT /restaurant_coupons/1.json
  def update
    @restaurant_coupon = RestaurantCoupon.find(params[:id])

    respond_to do |format|
      if @restaurant_coupon.update_attributes(params[:restaurant_coupon])
        format.html { redirect_to admin_restaurant_coupon_path(@restaurant_coupon), notice: 'Restaurant coupon was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  # DELETE /restaurant_coupons/1
  # DELETE /restaurant_coupons/1.json
  def destroy
    @restaurant_coupon = RestaurantCoupon.find(params[:id])
    @restaurant_coupon.destroy

    respond_to do |format|
      format.html { redirect_to admin_restaurant_coupons_url }
    end
  end

  def accept_request
    @coupon = RestaurantCoupon.find(params[:id])
    version = @coupon.versions.count
    @coupon.revert_to!(version)
    flash[:notice] = "Restaurant coupon Information resquest accepted.."
    redirect_to :back
  end

  def reject_request
    @coupon = RestaurantCoupon.find(params[:id])
    @coupon.revert_to!(1)
    flash[:notice] = "Restaurant coupon Information resquest rejected.."
    redirect_to :back
  end
end
