class Admin::NotesController < Admin::CustomersController
  # GET /notes
  def index
    @notes = Note.all

    respond_to do |format|
      format.html # index.html.erb
    end
  end

  # GET /notes/1
  def show
    @note = Note.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
    end
  end

  # GET /notes/new
  def new
    @customer = User.where(id: params[:customer_id]).first
    @note = @customer.notes.build
    
    respond_to do |format|
      format.html # new.html.erb
    end
  end

  # GET /notes/1/edit
  def edit
    @customer = User.where(id: params[:customer_id]).first
    @note = @customer.notes.find(params[:id])
  end

  # POST /notes
  def create
    @note = Note.new(params[:note])
    @customer = User.where(id: params[:note][:user_id]).first
    respond_to do |format|
      if @note.save
        format.html { redirect_to admin_customer_path(@customer), notice: 'Note was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  # PUT /notes/1
  def update
    @note = Note.find(params[:id])
    @customer = User.where(id: params[:note][:user_id]).first
    respond_to do |format|
      if @note.update_attributes(params[:note])
        format.html { redirect_to admin_customer_path(@customer), notice: 'Note was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  # DELETE /notes/1
  def destroy
    @note = Note.find(params[:id])
    @customer = User.where(id: params[:customer_id]).first
    @note.destroy

    respond_to do |format|
      format.html { redirect_to admin_customer_path(@customer) }
    end
  end
end
