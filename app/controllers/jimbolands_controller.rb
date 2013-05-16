class JimbolandsController < ApplicationController
  # GET /jimbolands
  # GET /jimbolands.json
  def index
    @jimbolands = Jimboland.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @jimbolands }
    end
  end

  # GET /jimbolands/1
  # GET /jimbolands/1.json
  def show
    @jimboland = Jimboland.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @jimboland }
    end
  end

  # GET /jimbolands/new
  # GET /jimbolands/new.json
  def new
    @jimboland = Jimboland.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @jimboland }
    end
  end

  # GET /jimbolands/1/edit
  def edit
    @jimboland = Jimboland.find(params[:id])
  end

  # POST /jimbolands
  # POST /jimbolands.json
  def create
    @jimboland = Jimboland.new(params[:jimboland])

    respond_to do |format|
      if @jimboland.save
        format.html { redirect_to @jimboland, notice: 'Jimboland was successfully created.' }
        format.json { render json: @jimboland, status: :created, location: @jimboland }
      else
        format.html { render action: "new" }
        format.json { render json: @jimboland.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /jimbolands/1
  # PUT /jimbolands/1.json
  def update
    @jimboland = Jimboland.find(params[:id])

    respond_to do |format|
      if @jimboland.update_attributes(params[:jimboland])
        format.html { redirect_to @jimboland, notice: 'Jimboland was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @jimboland.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jimbolands/1
  # DELETE /jimbolands/1.json
  def destroy
    @jimboland = Jimboland.find(params[:id])
    @jimboland.destroy

    respond_to do |format|
      format.html { redirect_to jimbolands_url }
      format.json { head :no_content }
    end
  end
end
