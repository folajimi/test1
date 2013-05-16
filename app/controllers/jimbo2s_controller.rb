class Jimbo2sController < ApplicationController
  # GET /jimbo2s
  # GET /jimbo2s.json
  def index
    @jimbo2s = Jimbo2.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @jimbo2s }
    end
  end

  # GET /jimbo2s/1
  # GET /jimbo2s/1.json
  def show
    @jimbo2 = Jimbo2.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @jimbo2 }
    end
  end

  # GET /jimbo2s/new
  # GET /jimbo2s/new.json
  def new
    @jimbo2 = Jimbo2.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @jimbo2 }
    end
  end

  # GET /jimbo2s/1/edit
  def edit
    @jimbo2 = Jimbo2.find(params[:id])
  end

  # POST /jimbo2s
  # POST /jimbo2s.json
  def create
    @jimbo2 = Jimbo2.new(params[:jimbo2])

    respond_to do |format|
      if @jimbo2.save
        format.html { redirect_to @jimbo2, notice: 'Jimbo2 was successfully created.' }
        format.json { render json: @jimbo2, status: :created, location: @jimbo2 }
      else
        format.html { render action: "new" }
        format.json { render json: @jimbo2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /jimbo2s/1
  # PUT /jimbo2s/1.json
  def update
    @jimbo2 = Jimbo2.find(params[:id])

    respond_to do |format|
      if @jimbo2.update_attributes(params[:jimbo2])
        format.html { redirect_to @jimbo2, notice: 'Jimbo2 was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @jimbo2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jimbo2s/1
  # DELETE /jimbo2s/1.json
  def destroy
    @jimbo2 = Jimbo2.find(params[:id])
    @jimbo2.destroy

    respond_to do |format|
      format.html { redirect_to jimbo2s_url }
      format.json { head :no_content }
    end
  end
end
