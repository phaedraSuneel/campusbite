class Admin::UserRolesController < ApplicationController

  def index
    @user_roles = UserRole.all

    respond_to do |format|
      format.html # index.html.erb
    end
  end


  def show
    @user_role = UserRole.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
    end
  end


  def new
    @user_role = UserRole.new

    respond_to do |format|
      format.html # new.html.erb
    end
  end


  def edit
    @user_role = UserRole.find(params[:id])
  end

  def create
    @user_role = UserRole.new(params[:user_role])

    respond_to do |format|
      if @user_role.save
        format.html { redirect_to admin_user_roles_url, notice: 'User role was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def update
    @user_role = UserRole.find(params[:id])

    respond_to do |format|
      if @user_role.update_attributes(params[:user_role])
        format.html { redirect_to admin_user_roles_url, notice: 'User role was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  def destroy
    @user_role = UserRole.find(params[:id])
    @user_role.destroy

    respond_to do |format|
      format.html { redirect_to admin_user_roles_url }
    end
  end
end
