class AddPhone3ToticketsController < ApplicationController
  # GET /add_phone3_totickets
  # GET /add_phone3_totickets.json
  def index
    @add_phone3_totickets = AddPhone3Toticket.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @add_phone3_totickets }
    end
  end

  # GET /add_phone3_totickets/1
  # GET /add_phone3_totickets/1.json
  def show
    @add_phone3_toticket = AddPhone3Toticket.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @add_phone3_toticket }
    end
  end

  # GET /add_phone3_totickets/new
  # GET /add_phone3_totickets/new.json
  def new
    @add_phone3_toticket = AddPhone3Toticket.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @add_phone3_toticket }
    end
  end

  # GET /add_phone3_totickets/1/edit
  def edit
    @add_phone3_toticket = AddPhone3Toticket.find(params[:id])
  end

  # POST /add_phone3_totickets
  # POST /add_phone3_totickets.json
  def create
    @add_phone3_toticket = AddPhone3Toticket.new(params[:add_phone3_toticket])

    respond_to do |format|
      if @add_phone3_toticket.save
        format.html { redirect_to @add_phone3_toticket, notice: 'Add phone3 toticket was successfully created.' }
        format.json { render json: @add_phone3_toticket, status: :created, location: @add_phone3_toticket }
      else
        format.html { render action: "new" }
        format.json { render json: @add_phone3_toticket.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /add_phone3_totickets/1
  # PUT /add_phone3_totickets/1.json
  def update
    @add_phone3_toticket = AddPhone3Toticket.find(params[:id])

    respond_to do |format|
      if @add_phone3_toticket.update_attributes(params[:add_phone3_toticket])
        format.html { redirect_to @add_phone3_toticket, notice: 'Add phone3 toticket was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @add_phone3_toticket.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /add_phone3_totickets/1
  # DELETE /add_phone3_totickets/1.json
  def destroy
    @add_phone3_toticket = AddPhone3Toticket.find(params[:id])
    @add_phone3_toticket.destroy

    respond_to do |format|
      format.html { redirect_to add_phone3_totickets_url }
      format.json { head :no_content }
    end
  end
end
