class AddSexeToJimbolansController < ApplicationController
  # GET /add_sexe_to_jimbolans
  # GET /add_sexe_to_jimbolans.json
  def index
    @add_sexe_to_jimbolans = AddSexeToJimbolan.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @add_sexe_to_jimbolans }
    end
  end

  # GET /add_sexe_to_jimbolans/1
  # GET /add_sexe_to_jimbolans/1.json
  def show
    @add_sexe_to_jimbolan = AddSexeToJimbolan.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @add_sexe_to_jimbolan }
    end
  end

  # GET /add_sexe_to_jimbolans/new
  # GET /add_sexe_to_jimbolans/new.json
  def new
    @add_sexe_to_jimbolan = AddSexeToJimbolan.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @add_sexe_to_jimbolan }
    end
  end

  # GET /add_sexe_to_jimbolans/1/edit
  def edit
    @add_sexe_to_jimbolan = AddSexeToJimbolan.find(params[:id])
  end

  # POST /add_sexe_to_jimbolans
  # POST /add_sexe_to_jimbolans.json
  def create
    @add_sexe_to_jimbolan = AddSexeToJimbolan.new(params[:add_sexe_to_jimbolan])

    respond_to do |format|
      if @add_sexe_to_jimbolan.save
        format.html { redirect_to @add_sexe_to_jimbolan, notice: 'Add sexe to jimbolan was successfully created.' }
        format.json { render json: @add_sexe_to_jimbolan, status: :created, location: @add_sexe_to_jimbolan }
      else
        format.html { render action: "new" }
        format.json { render json: @add_sexe_to_jimbolan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /add_sexe_to_jimbolans/1
  # PUT /add_sexe_to_jimbolans/1.json
  def update
    @add_sexe_to_jimbolan = AddSexeToJimbolan.find(params[:id])

    respond_to do |format|
      if @add_sexe_to_jimbolan.update_attributes(params[:add_sexe_to_jimbolan])
        format.html { redirect_to @add_sexe_to_jimbolan, notice: 'Add sexe to jimbolan was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @add_sexe_to_jimbolan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /add_sexe_to_jimbolans/1
  # DELETE /add_sexe_to_jimbolans/1.json
  def destroy
    @add_sexe_to_jimbolan = AddSexeToJimbolan.find(params[:id])
    @add_sexe_to_jimbolan.destroy

    respond_to do |format|
      format.html { redirect_to add_sexe_to_jimbolans_url }
      format.json { head :no_content }
    end
  end
end
