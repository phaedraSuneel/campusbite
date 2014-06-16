class Admin::MenuController < Admin::RestaurantsController
  
  def index
    authorize! :read, Menu
    @menu =  Menu.all
  end

  def show
    authorize! :read, Menu
    @menu = Menu.find(params[:id])
    @restaurant = @menu.restaurant
  end

  def new
    authorize! :create, Menu
    @menu = Menu.new
  end

  def edit
    authorize! :update, Menu
    @menu = Menu.find(params[:id]) 
  end

  def create
    @menu  = Menu.new(params[:menu])

    if @menu.save
      flash[:notice] = 'Menu was successfully created'
      redirect_to @menu
    else
      render action: "new"
    end
  end

  def update
    @@menu = Menu.find(params[:id]) 
    if @menu.update_attributes(params[:menu])
      flash[:notice] = 'Menu was successfully updated.'
      redirect_to @menu
    else
      render action: "edit"
    end
  end

  def destroy
    authorize! :delete, Menu
    @menu = Menu.find(params[:id]) 
    @menu.destroy
    flash[:notice] = 'Menu was successfully deleted.'
    redirect_to @menu
  end

end
