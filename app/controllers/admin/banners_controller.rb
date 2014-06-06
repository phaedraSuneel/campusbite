class Admin::BannersController < ApplicationController
  # GET /banners
  def index
    @banners = Banner.all

    respond_to do |format|
      format.html # index.html.erb
    end
  end

  # GET /banners/1
  def show
    @banner = Banner.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
    end
  end

  # GET /banners/new
  def new
    @banner = Banner.new
    @banner.uploads.build
    respond_to do |format|
      format.html # new.html.erb
    end
  end

  # GET /banners/1/edit
  def edit
    @banner = Banner.find(params[:id])
  end

  # POST /banners
  def create
    @banner = Banner.new(params[:banner])

    respond_to do |format|
      if @banner.save
        format.html { redirect_to admin_banner_path(@banner), notice: 'Banner was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  # PUT /banners/1
  def update
    @banner = Banner.find(params[:id])

    respond_to do |format|
      if @banner.update_attributes(params[:banner])
        format.html { redirect_to admin_banner_path(@banner), notice: 'Banner was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  # DELETE /banners/1
  def destroy
    @banner = Banner.find(params[:id])
    @banner.destroy

    respond_to do |format|
      format.html { redirect_to admin_banners_url }
    end
  end
end
