class SchoolsController < ApplicationController

  def index
    @schools = School.all
  end

  def show
    @school = School.find(params[:id])
  end
  
  def new
    @school = School.new
  end

  def edit
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
    @school = School.find(params[:id])
    @school.destroy
    flash[:notice] = 'School was successfully deleted.'
    redirect_to schools_url
  end
end
