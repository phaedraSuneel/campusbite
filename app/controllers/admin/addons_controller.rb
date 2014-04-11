class Admin::AddonsController < AdminController
  # GET /addons
  # GET /addons.json
  def index
    @addons = Addon.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @addons }
    end
  end

  # GET /addons/1
  # GET /addons/1.json
  def show
    @addon = Addon.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @addon }
    end
  end

  # GET /addons/new
  # GET /addons/new.json
  def new
    @addon = Addon.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @addon }
    end
  end

  # GET /addons/1/edit
  def edit
    @addon = Addon.find(params[:id])
  end

  # POST /addons
  # POST /addons.json
  def create
    @addon = Addon.new(params[:addon])

    respond_to do |format|
      if @addon.save
        format.html { redirect_to admin_addon_path(@addon), notice: 'Addon was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  # PUT /addons/1
  # PUT /addons/1.json
  def update
    @addon = Addon.find(params[:id])

    respond_to do |format|
      if @addon.update_attributes(params[:addon])
        format.html { redirect_to admin_addon_path(@addon), notice: 'Addon was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  # DELETE /addons/1
  # DELETE /addons/1.json
  def destroy
    @addon = Addon.find(params[:id])
    @addon.destroy

    respond_to do |format|
      format.html { redirect_to admin_addons_path }
    end
  end

  def category_field
    @restaurant = Restaurant.find(params[:id])
    @menu = @restaurant.menu
    @menu_categories = @menu.menu_categories
    render(:partial => "admin/addons/get_category_field", :locals => {:@menu_categories => @menu_categories })
  end

  def sub_addon_field
    render(:partial => "admin/addons/get_sub_addon_field", :locals => {:length => params[:length].to_i }, :layout => false)
  end
end
