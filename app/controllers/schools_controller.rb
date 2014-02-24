class SchoolsController < ApplicationController

  def index
    authorize! :read, School
    unless params[:keyword].blank?
      @search = School.search do
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
    render :partial => 'schools/search_result', :@schools => @school, :layout => false
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
