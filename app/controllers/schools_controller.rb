class SchoolsController < ApplicationController

  def index
    authorize! :read, School
    @schools = School.all
  end

  def search
    @schools = School.search(params[:keyword])
    @buildings = @schools.collect(&:buildings).flatten
    respond_to do |format|
      format.json { render :json => @buildings.map{|a| [a.school.school_name, a.building_name].join('(') + ')'} }
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


  def new_building
    authorize! :create, Building
    school = School.find(params[:id])
    @building = school.buildings.build
  end

  def create_building
    @school = School.find(params[:school_id])
    @building = @school.buildings.build(params[:building])
    if @building.save
      flash[:notice] = "Building was successfully created"
      redirect_to school_path(@school)
    else
      flash[:notice] = "Building was not created"
      redirect_to school_path(@school)
    end
  end

  def buildings
    authorize! :read, Building
    @school = School.find(params[:id])
    @buildings = @school.buildings
  end
end
