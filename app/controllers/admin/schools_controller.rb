class Admin::SchoolsController < ApplicationController

  def index

    page = params[:draw].nil? ? 1 : params[:draw].to_i
    limit = params[:length].to_i
    offset = params[:start].to_i

    unless params[:order].nil?
      col_number = params[:order]["0"]["column"].to_i
      order_by_type  = params[:order]["0"]["dir"]
    end

    attribute_name = get_sort_attribute_name(col_number)
    sorting_query = [attribute_name,order_by_type].join(' ')

    @schools = School.offset(offset).limit(limit).order(sorting_query)

    unless params[:search].nil?
      @schools = School.apply_search_filter(@schools, params[:search][:value])
    end

    respond_to do |format|
      format.json do
        return render :json =>  {draw: page,  recordsTotal: School.count,  recordsFiltered: School.count , :data => @schools.collect{|a| [a.school_name, "<a src='#{admin_school_url(a)}'><span class='label label-sm label-success'> show </span></a>", "<a src='#{edit_admin_school_url(a)}'><span class='label label-sm label-default'> edit </span> </a>", "<a src='#{delete_admin_school_url(a)}' data-confirm='Are you sure?' data-method = 'delete' rel='nofollow'><span class='label label-sm label-danger'> delete </span> </a>", "<a src='#{new_building_admin_school_url(a)}'><span class='label label-sm label-primary'> Add SubCategory </a>"]} }
      end
      format.html
    end
  end

  def show
    @school = School.find(params[:id])
    page = params[:draw].nil? ? 1 : params[:draw].to_i
    limit = params[:length].to_i
    offset = params[:start].to_i

    unless params[:order].nil?
      col_number = params[:order]["0"]["column"].to_i
      order_by_type  = params[:order]["0"]["dir"]
    end
    attribute_name = get_building_sort_attribute_name(col_number)
    sorting_query = [attribute_name,order_by_type].join(' ')

    @buildings = @school.buildings.offset(offset).limit(limit).order(sorting_query)

    unless params[:search].nil?
      @buildings  = Building.apply_search_filter(@buildings , params[:search][:value])
    end
    respond_to do |format|
      format.json do
        return render :json =>  {draw: page,  recordsTotal: @school.buildings.count,  recordsFiltered: @school.buildings.count , :data => @buildings.collect{|a| [a.building_name, a.street_adress, a.city, a.zip_code, a.state]} }
      end
      format.html
    end
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
      redirect_to admin_school_path(@school)
    else
      render action: "new"
    end
  end

  def update
    @school = School.find(params[:id])
    if @school.update_attributes(params[:school])
      flash[:notice] = 'School was successfully updated.'
      redirect_to admin_school_path(@school)
    else
      render action: "edit"
    end
  end

  def destroy
    @school = School.find(params[:id])
    @school.destroy
    flash[:notice] = 'School was successfully deleted.'
    redirect_to admin_schools_path
  end

  def delete
    @school = School.find(params[:id])
    @school.destroy
    flash[:notice] = 'Category was successfully deleted.'
    redirect_to admin_schools_path
  end

  def new_building
    authorize! :create, Building
    @school = School.find(params[:id])
    @building = @school.buildings.build
  end

  def create_building
    @school = School.find(params[:school_id])
    @building = @school.buildings.build(params[:building])
    if @building.save
      flash[:notice] = "Building was successfully created"
      redirect_to admin_school_path(@school)
    else
      flash[:notice] = "Building was not created"
      redirect_to admin_school_path(@school)
    end
  end

  def buildings
    authorize! :read, Building
    @school = School.find(params[:id])
    @buildings = @school.buildings
  end

  private

  def get_sort_attribute_name(column_number)

    case column_number
    when 0
      return "school_name"
    else
      return "id"
    end

  end

  def get_building_sort_attribute_name(col_number)

    case col_number
    when 0
      return "building_name"
    when 1
      return "street_adress"
    when 2
      return "city"
    when 3
      return "zip_code"
    else
      return "state"
    end
  end

end
