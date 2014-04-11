class Admin::MenuItemsController < AdminController

  def index
    authorize! :read, MenuItem
    @menu = Menu.find(params[:menu_id])
    @menu_items = MenuItem.all
  end

  def show
    authorize! :read, MenuItem
    @menu = Menu.find(params[:menu_id])
    @menu_item = MenuItem.find(params[:id])
  end

  def new
    authorize! :create, MenuItem
    @menu = Menu.find(params[:menu_id])
    @menu_category = @menu.menu_categories.all
    @menu_item = MenuItem.new
  end

  def edit
    authorize! :update, MenuItem
    @menu = Menu.find(params[:menu_id])
    @menu_item = MenuItem.find(params[:id])
  end

  def create
    @menu =Menu.find(params[:menu_id])
    @menu_item = MenuItem.new(params[:menu_item])   
    if @menu_item.save
      flash[:notice] =  'Menu item was successfully created.'
      redirect_to admin_menu_path(@menu)
    else
      render action: "new"
    end
  end  

  def update
    @menu =Menu.find(params[:menu_id])
    @menu_item = MenuItem.find(params[:id])
    if @menu_item.update_attributes(params[:menu_item])
      flash[:notice] =  'Menu item was successfully updated.'
      redirect_to admin_menu_path(@menu)
    else
      render action: "edit"
    end
  end

  def destroy
    authorize! :delete, MenuItem
    @menu =Menu.find(params[:menu_id])
    @menu_item = MenuItem.find(params[:id])
    @menu_item.destroy
    flash[:notice] =  'Menu item was successfully delete.'
    redirect_to admin_menu_path(@menu)
  end

  def property_field
    render(:partial => "admin/menu_items/get_property_field", :locals => {:length => params[:length].to_i})
  end

end
