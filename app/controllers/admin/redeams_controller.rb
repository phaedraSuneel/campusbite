class Admin::RedeamsController < ApplicationController
  # GET /redeams
  # GET /redeams.json
  def index
    @redeams = Redeam.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @redeams }
    end
  end

  # GET /redeams/1
  # GET /redeams/1.json
  def show
    @redeam = Redeam.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @redeam }
    end
  end

  # GET /redeams/new
  # GET /redeams/new.json
  def new
    @redeam = Redeam.new
    @redeam.build_upload
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @redeam }
    end
  end

  # GET /redeams/1/edit
  def edit
    @redeam = Redeam.find(params[:id])
  end

  # POST /redeams
  # POST /redeams.json
  def create
    @redeam = Redeam.new(params[:redeam])

    respond_to do |format|
      if @redeam.save
        format.html { redirect_to admin_redeams_path, notice: 'Redeam was successfully created.' }
        format.json { render json: @redeam, status: :created, location: admin_readms_path }
      else
        format.html { render action: "new" }
        format.json { render json: @redeam.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /redeams/1
  # PUT /redeams/1.json
  def update
    @redeam = Redeam.find(params[:id])

    respond_to do |format|
      if @redeam.update_attributes(params[:redeam])
        format.html { redirect_to admin_redeams_path, notice: 'Redeam was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @redeam.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /redeams/1
  # DELETE /redeams/1.json
  def destroy
    @redeam = Redeam.find(params[:id])
    @redeam.destroy

    respond_to do |format|
      format.html { redirect_to admin_redeams_url }
      format.json { head :no_content }
    end
  end
end
