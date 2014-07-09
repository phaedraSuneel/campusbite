class Admin::TermOfServicePagesController < ApplicationController
  # GET /term_of_service_pages
  # GET /term_of_service_pages.json
  def index
    @term_of_service_pages = TermOfServicePage.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @term_of_service_pages }
    end
  end

  # GET /term_of_service_pages/1
  # GET /term_of_service_pages/1.json
  def show
    @term_of_service_page = TermOfServicePage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @term_of_service_page }
    end
  end

  # GET /term_of_service_pages/new
  # GET /term_of_service_pages/new.json
  def new
    @term_of_service_page = TermOfServicePage.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @term_of_service_page }
    end
  end

  # GET /term_of_service_pages/1/edit
  def edit
    @term_of_service_page = TermOfServicePage.find(params[:id])
  end

  # POST /term_of_service_pages
  # POST /term_of_service_pages.json
  def create
    @term_of_service_page = TermOfServicePage.new(params[:term_of_service_page])

    respond_to do |format|
      if @term_of_service_page.save
        format.html { redirect_to admin_term_of_service_pages_path, notice: 'Term of service page was successfully created.' }
        format.json { render json: @term_of_service_page, status: :created, location: admin_term_of_service_pages_path }
      else
        format.html { render action: "new" }
        format.json { render json: @term_of_service_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /term_of_service_pages/1
  # PUT /term_of_service_pages/1.json
  def update
    @term_of_service_page = TermOfServicePage.find(params[:id])

    respond_to do |format|
      if @term_of_service_page.update_attributes(params[:term_of_service_page])
        format.html { redirect_to admin_term_of_service_pages_path, notice: 'Term of service page was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @term_of_service_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /term_of_service_pages/1
  # DELETE /term_of_service_pages/1.json
  def destroy
    @term_of_service_page = TermOfServicePage.find(params[:id])
    @term_of_service_page.destroy

    respond_to do |format|
      format.html { redirect_to admin_term_of_service_pages_url }
      format.json { head :no_content }
    end
  end
end
