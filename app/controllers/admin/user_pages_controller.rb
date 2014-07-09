class Admin::UserPagesController < ApplicationController
  # GET /user_pages
  # GET /user_pages.json
  def index
    @user_pages = UserPage.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @user_pages }
    end
  end

  # GET /user_pages/1
  # GET /user_pages/1.json
  def show
    @user_page = UserPage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user_page }
    end
  end

  # GET /user_pages/new
  # GET /user_pages/new.json
  def new
    @user_page = UserPage.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user_page }
    end
  end

  # GET /user_pages/1/edit
  def edit
    @user_page = UserPage.find(params[:id])
  end

  # POST /user_pages
  # POST /user_pages.json
  def create
    @user_page = UserPage.new(params[:user_page])

    respond_to do |format|
      if @user_page.save
        format.html { redirect_to admin_user_pages_path, notice: 'User page was successfully created.' }
        format.json { render json: @user_page, status: :created, location: admin_user_pages_path }
      else
        format.html { render action: "new" }
        format.json { render json: @user_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /user_pages/1
  # PUT /user_pages/1.json
  def update
    @user_page = UserPage.find(params[:id])

    respond_to do |format|
      if @user_page.update_attributes(params[:user_page])
        format.html { redirect_to admin_user_pages_path, notice: 'User page was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_pages/1
  # DELETE /user_pages/1.json
  def destroy
    @user_page = UserPage.find(params[:id])
    @user_page.destroy

    respond_to do |format|
      format.html { redirect_to user_pages_url }
      format.json { head :no_content }
    end
  end
end
