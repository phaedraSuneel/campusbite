class Admin::UserRolesController < ApplicationController

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

    @user_roles = UserRole.offset(offset).limit(limit).order(sorting_query)

    unless params[:search].nil?
       @user_roles = UserRole.apply_search_filter( @user_roles, params[:search][:value])
    end
    respond_to do |format|
      format.json do 
        return render :json =>  {draw: page,  recordsTotal: Coupon.count,  recordsFiltered: Coupon.count , :data =>  @user_roles.collect{|a| [a.name, a.entity, a.action, a.notes, "<a src='#{edit_admin_user_role_url(a)}'><span class='label label-sm label-default'> Edit </span></a>", "<a src='#{delete_admin_user_role_url(a)}' data-confirm='Are you sure?' data-method = 'delete' rel='nofollow'><span class='label label-sm label-danger'> delete </span></a>" ]} }
      end
      format.html
    end
  end


  def show
    @user_role = UserRole.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
    end
  end


  def new
    @user_role = UserRole.new

    respond_to do |format|
      format.html # new.html.erb
    end
  end


  def edit
    @user_role = UserRole.find(params[:id])
  end

  def create
    @user_role = UserRole.new(params[:user_role])

    respond_to do |format|
      if @user_role.save
        format.html { redirect_to admin_user_roles_url, notice: 'User role was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def update
    @user_role = UserRole.find(params[:id])

    respond_to do |format|
      if @user_role.update_attributes(params[:user_role])
        format.html { redirect_to admin_user_roles_url, notice: 'User role was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  def destroy
    @user_role = UserRole.find(params[:id])
    @user_role.destroy

    respond_to do |format|
      format.html { redirect_to admin_user_roles_url }
    end
  end

  def delete
    @user_role = UserRole.find(params[:id])
    @user_role.destroy

    respond_to do |format|
      format.html { redirect_to admin_user_roles_url }
    end
  end

  private

  def get_sort_attribute_name(col_number)
    case col_number
    when 0
      return "name"
    when 1
      return "entity"
    when 2
      return "action"
    when 3
      return "notes"    
    else 
      return "id"  
    end
  end

end
