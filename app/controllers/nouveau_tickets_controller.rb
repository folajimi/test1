class NouveauTicketsController < ApplicationController
  # GET /nouveau_tickets
  # GET /nouveau_tickets.json
  def index
    @nouveau_tickets = NouveauTicket.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @nouveau_tickets }
    end
  end

  # GET /nouveau_tickets/1
  # GET /nouveau_tickets/1.json
  def show
    @nouveau_ticket = NouveauTicket.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @nouveau_ticket }
    end
  end

  # GET /nouveau_tickets/new
  # GET /nouveau_tickets/new.json
  def new
    @nouveau_ticket = NouveauTicket.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @nouveau_ticket }
    end
  end

  # GET /nouveau_tickets/1/edit
  def edit
    @nouveau_ticket = NouveauTicket.find(params[:id])
  end

  # POST /nouveau_tickets
  # POST /nouveau_tickets.json
  def create
    @nouveau_ticket = NouveauTicket.new(params[:nouveau_ticket])

    respond_to do |format|
      if @nouveau_ticket.save
        format.html { redirect_to @nouveau_ticket, notice: 'Nouveau ticket was successfully created.' }
        format.json { render json: @nouveau_ticket, status: :created, location: @nouveau_ticket }
      else
        format.html { render action: "new" }
        format.json { render json: @nouveau_ticket.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /nouveau_tickets/1
  # PUT /nouveau_tickets/1.json
  def update
    @nouveau_ticket = NouveauTicket.find(params[:id])

    respond_to do |format|
      if @nouveau_ticket.update_attributes(params[:nouveau_ticket])
        format.html { redirect_to @nouveau_ticket, notice: 'Nouveau ticket was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @nouveau_ticket.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nouveau_tickets/1
  # DELETE /nouveau_tickets/1.json
  def destroy
    @nouveau_ticket = NouveauTicket.find(params[:id])
    @nouveau_ticket.destroy

    respond_to do |format|
      format.html { redirect_to nouveau_tickets_url }
      format.json { head :no_content }
    end
  end
end
