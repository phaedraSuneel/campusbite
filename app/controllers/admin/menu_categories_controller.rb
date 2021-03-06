class Admin::MenuCategoriesController < ApplicationController

  def index
    authorize! :read, MenuCategory
    @menu = Menu.find(params[:menu_id])
    @menu_categories = @menu.menu_categories
  end

  def show
    authorize! :read, MenuCategory
    @menu = Menu.find(params[:menu_id])
    @menu_category= @menu.menu_categories.find(params[:id])
  end

  def new
    authorize! :create, MenuCategory
    @menu = Menu.find(params[:menu_id])
    @menu_category = @menu.menu_categories.build
  end

  def edit
    authorize! :update, MenuCategory
    @menu = Menu.find(params[:menu_id])
    @menu_category = @menu.menu_categories.find(params[:id])
  end

  def create
    @menu = Menu.find(params[:menu_id])
    @menu_category = @menu.menu_categories.build(params[:menu_category])

    if @menu_category.save
      flash[:notice] = 'Menu category was successfully created.'
      redirect_to admin_menu_path(@menu)
    else
      render action: "new"
    end
  end

  def update
    @menu = Menu.find(params[:menu_id])
    @menu_category = @menu.menu_categories.find(params[:id])
    
    if @menu_category.update_attributes(params[:menu_category])
      flash[:notice] = 'Menu category was successfully updated.'
      redirect_to admin_menu_path(@menu)
    else
      render action: "edit"
    end
  end

  def destroy
    authorize! :delete, MenuCategory
    @menu = Menu.find(params[:menu_id])
    @menu_category = @menu.menu_categories.find(params[:id])
    @menu_category.destroy
    flash[:notice] = 'Menu category was successfully deleted.'
    redirect_to admin_menu_path(@menu)
  end

  def accept_request
    @menu = Menu.find(params[:menu_id])
    @menu_category = @menu.menu_categories.find(params[:id])
    version = @menu_category.versions.count
    @menu_category.revert_to!(version)
    flash[:notice] = "Menu Category resquest accepted.."
    redirect_to :back
  end

  def reject_request
    @menu = Menu.find(params[:menu_id])
    @menu_category = @menu.menu_categories.find(params[:id])
    version = @menu_category.versions.count
    @menu_category.revert_to!(1)
    flash[:notice] = "Menu Category resquest rejected.."
    redirect_to :back
  end
end
