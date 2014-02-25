class SchoolsController < ApplicationController

  def index
    authorize! :read, School
    unless params[:keyword].blank?
      @search = School.search do
        with(:is_pick_up, params[:is_pick_up].to_s)
        with(:is_deliver, params[:is_deliver].to_s)
        fulltext params[:keyword] do 
          fields(:school_name)
        end

      end  
      @schools = @search.results
    else
      @schools = School.all
    end  
  end

  def search
    @search = School.search do
      fulltext params[:keyword] do 
        fields(:school_name)
      end
    end  
    @schools = @search.results
    respond_to do |format|
      format.json { render :json => @schools.collect(&:school_name) }  
    end                          
  end

  def show
    authorize! :read, School
    @school = School.find(params[:id])
  end
  
  def new
    authorize! :create, School
    @school = School.new
  end

  def edit
    authorize! :update, School
    @school = School.find(params[:id])
  end

  def create
    @school = School.new(params[:school])
    if @school.save
      flash[:notice] = 'School was successfully created.'
      redirect_to @school
    else
      render action: "new"
    end
  end

  def update
    @school = School.find(params[:id])
    if @school.update_attributes(params[:school])
      flash[:notice] = 'School was successfully updated.'
      redirect_to @school
    else
      render action: "edit"
    end
  end

  def destroy
    authorize! :deleted, School
    @school = School.find(params[:id])
    @school.destroy
    flash[:notice] = 'School was successfully deleted.'
    redirect_to schools_url
  end
end
