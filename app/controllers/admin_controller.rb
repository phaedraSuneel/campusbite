class AdminController < ApplicationController

  layout "admin_layout"

  def index
    @restaurants = Restaurant.where(:status => 'pending')
    @menu_categories = MenuCategory.where(:status => 'pending')
    @menu_items = MenuItem.where(:status => 'pending')
  end

  def user_layout
    "admin_layout"
  end

  #### User Model ##########
  def user
    authorize! :read, User
  	@users = User.all
  end

  def new_user
    authorize! :create, User
  	@user = User.new
  end

  def create_user
  	@user = User.new(params[:user])
  	role = Role.find(params[:role][:id])
  	respond_to do |format|
      if @user.save
      	@user.add_role role.name
        format.html { redirect_to user_admin_index_path, notice: 'User was successfully created.' }
        format.json { render json: @user, status: :created, location: @user }
      else
        flash.now[:error] = "Could not save User"
        format.html { render action: "new_user" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def show_user
    authorize! :read, User
  	@user = User.find params[:id]
  end

  def edit_user
    authorize! :update, User
  	@user = User.find(params[:id])
  end

  def update_user
    @user = User.find(params[:id])
    role = Role.find(params[:role][:id])
    if @user.update_attributes(params[:user])
    	@user.add_role role.name
      redirect_to(show_user_admin_path(@user))
    else
      render "edit_user"
    end
  end

  def destroy_user
    authorize! :delete, User 
  	user = User.find(params[:id])
  	if user.destroy
  		flash[:notice] = "User successfully deleted."
    	redirect_to(:back)
    else
    	flash[:notice] = "User not successfully deleted."
    	redirect_to(:back)
    end	
  end

  #### Role Model ##########

  def role
    @roles = Role.all
  end

  def new_role
    authorize! :create, Role
    @role = Role.new
  end

  def create_role
    @role = Role.new
    @role.name = params[:role][:name]
    respond_to do |format|
      if @role.save
        format.html { redirect_to role_admin_index_path, notice: 'role was successfully created.' }
        format.json { render json: @role, status: :created, location: @role }
      else
        flash.now[:error] = "Could not save role"
        format.html { render action: "new_role" }
        format.json { render json: @role.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def show_role
    authorize! :read, role
    @role = Role.find params[:id]
  end

  def edit_role
    authorize! :update, Role
    @role = Role.find(params[:id])
  end

  def update_role
    @role = Role.find(params[:id])
    if @role.update_attributes(params[:role])
      redirect_to(show_role_admin_path(@role))
    else
      render "edit_role"
    end
  end

  def destroy_role
    authorize! :delete, Role
    role = Role.find(params[:id])
    if role.destroy
      flash[:notice] = "Role successfully deleted."
      redirect_to(:back)
    else
      flash[:notice] = "Role not successfully deleted."
      redirect_to(:back)
    end 
  end
end
