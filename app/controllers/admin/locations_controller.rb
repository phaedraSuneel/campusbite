class Admin::LocationsController < ApplicationController
	
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
        return render :json =>  {draw: page,  recordsTotal: School.count,  recordsFiltered: School.count , :data => @schools.collect{|a| [a.school_name, a.branch_name, a.school_address]} }
      end
      format.html
    end
	end

  def show
  end

  def new
  end

  def edit
  end

  def create
  end

  def update
  end
  
  private

  def get_sort_attribute_name(column_number)
  
    case column_number
    when 0
      return "school_name"
    when 1
      return "branch_name"
    else
      return "school_address"
    end

  end 

end
