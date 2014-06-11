class Admin::CommentsController < Admin::OrdersController
  # GET /comments
  def index
    @order = Order.where(id: params[:order_id]).first
    @comments = @order.comments

    respond_to do |format|
      format.html # index.html.erb
    end
  end

  # GET /comments/1
  def show
    @order = Order.where(id: params[:order_id]).first
    @comment = @order.comments.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
    end
  end

  # GET /comments/new
  def new
    @order = Order.where(id: params[:order_id]).first
    @comment = @order.comments.build

    respond_to do |format|
      format.html # new.html.erb
    end
  end

  # GET /comments/1/edit
  def edit
    @order = Order.where(id: params[:order_id]).first
    @comment = @order.comments.find(params[:id])
  end

  # POST /comments
  def create
    @order = Order.where(id: params[:order_id]).first
    @comment = @order.comments.build(params[:comment])

    respond_to do |format|
      if @comment.save
        format.html { redirect_to admin_order_path(@order), notice: 'Comment was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  # PUT /comments/1
  def update
    @order = Order.where(id: params[:order_id]).first
    @comment = @order.comments.find(params[:id])
    
    respond_to do |format|
      if @comment.update_attributes(params[:comment]).first
        format.html { redirect_to redirect_to admin_order_path(@order), notice: 'Comment was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  # DELETE /comments/1
  def destroy
    @order = Order.where(id: params[:order_id]).first
    @comment = @order.comments.find(params[:id])
    @comment.destroy

    respond_to do |format|
      format.html { redirect_to redirect_to admin_orders_path(@order) }
    end
  end
end
