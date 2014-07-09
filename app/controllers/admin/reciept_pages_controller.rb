class Admin::RecieptPagesController < ApplicationController
  # GET /reciept_pages
  # GET /reciept_pages.json
  def index
    @reciept_pages = RecieptPage.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @reciept_pages }
    end
  end

  # GET /reciept_pages/1
  # GET /reciept_pages/1.json
  def show
    @reciept_page = RecieptPage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @reciept_page }
    end
  end

  # GET /reciept_pages/new
  # GET /reciept_pages/new.json
  def new
    @reciept_page = RecieptPage.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @reciept_page }
    end
  end

  # GET /reciept_pages/1/edit
  def edit
    @reciept_page = RecieptPage.find(params[:id])
  end

  # POST /reciept_pages
  # POST /reciept_pages.json
  def create
    @reciept_page = RecieptPage.new(params[:reciept_page])

    respond_to do |format|
      if @reciept_page.save
        format.html { redirect_to admin_reciept_pages_path, notice: 'Reciept page was successfully created.' }
        format.json { render json: @reciept_page, status: :created, location: admin_reciept_pages_path }
      else
        format.html { render action: "new" }
        format.json { render json: @reciept_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /reciept_pages/1
  # PUT /reciept_pages/1.json
  def update
    @reciept_page = RecieptPage.find(params[:id])

    respond_to do |format|
      if @reciept_page.update_attributes(params[:reciept_page])
        format.html { redirect_to admin_reciept_pages_path, notice: 'Reciept page was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @reciept_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reciept_pages/1
  # DELETE /reciept_pages/1.json
  def destroy
    @reciept_page = RecieptPage.find(params[:id])
    @reciept_page.destroy

    respond_to do |format|
      format.html { redirect_to admin_reciept_pages_url }
      format.json { head :no_content }
    end
  end
end
