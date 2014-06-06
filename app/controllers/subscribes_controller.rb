class SubscribesController < ApplicationController
  # GET /subscribes
  def index
    @subscribes = Subscribe.all

    respond_to do |format|
      format.html # index.html.erb
    end
  end

  # GET /subscribes/1
  def show
    @subscribe = Subscribe.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
    end
  end

  # GET /subscribes/new
  def new
    @subscribe = Subscribe.new

    respond_to do |format|
      format.html # new.html.erb
    end
  end

  # GET /subscribes/1/edit
  def edit
    @subscribe = Subscribe.find(params[:id])
  end

  # POST /subscribes
  def create
    @subscribe = Subscribe.new(params[:subscribe])

    respond_to do |format|
      if @subscribe.save
        format.html { redirect_to :back, notice: 'You are  successfully subscribed.' }
      else
        format.html { redirect_to :back, notice: @subscribe.errors.full_messages.first }
      end
    end
  end

  # PUT /subscribes/1
  def update
    @subscribe = Subscribe.find(params[:id])

    respond_to do |format|
      if @subscribe.update_attributes(params[:subscribe])
        format.html { redirect_to @subscribe, notice: 'Subscribe was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  # DELETE /subscribes/1
  def destroy
    @subscribe = Subscribe.find(params[:id])
    @subscribe.destroy

    respond_to do |format|
      format.html { redirect_to subscribes_url }
    end
  end
end
