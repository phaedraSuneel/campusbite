class SchoolsController < ApplicationController

  def index
    authorize! :read, School
    @schools = School.all 
  end

  def search
    @restaurants = Restaurant.search(params[:keyword])
    @schools =  @restaurants.collect(&:school)
    respond_to do |format|
      format.json { render :json => @schools.map {|a| a.school_name + " (" +  a.branch_name + ")" }    }  
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
