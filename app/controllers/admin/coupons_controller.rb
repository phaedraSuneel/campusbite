class Admin::CouponsController < ApplicationController
  # GET /coupons
  def index
    page = params[:draw].nil? ? 1 : params[:draw].to_i
    limit = params[:length].to_i
    offset = params[:start].to_i
    unless params[:order].nil?
      col_number = params[:order]["0"]["column"].to_i
      order_by_type  = params[:order]["0"]["dir"]
    end

    attribute_name = get_sort_attribute_name(col_number)
    sorting_query = [attribute_name,order_by_type].join(' ')

    @coupons = Coupon.offset(offset).limit(limit).order(sorting_query)
    
    unless params[:search].nil?
      @customers = Coupon.apply_search_filter(@coupons, params[:search][:value])
    end
    respond_to do |format|
      format.json do 
        return render :json =>  {draw: page,  recordsTotal: Coupon.count,  recordsFiltered: Coupon.count , :data => @customers.collect{|a| [a.code, a.amount, a.max_user, a.max_use, "<a src='#{admin_coupon_url(a)}'><span class='label label-sm label-success'> details </span></a>", "<a src='#{edit_admin_coupon_url(a)}'><span class='label label-sm label-default'> Edit </span></a>", "<a src='#{delete_admin_coupon_url(a)}' data-confirm='Are you sure?' data-method = 'delete' rel='nofollow'><span class='label label-sm label-danger'> delete </span></a>" ]} }
      end
      format.html
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

  def delete
    @coupon = Coupon.find(params[:id])
    @coupon.destroy

    respond_to do |format|
      format.html { redirect_to admin_coupons_url }
    end
  end

  private

  def get_sort_attribute_name(col_number)
  
    case col_number
    when 0
      return "code"
    when 1
      return "amount"
    when 2
      return "max_user"
    when 3
      return "max_use"    
    else 
      return "id"  
    end

  end 
end
