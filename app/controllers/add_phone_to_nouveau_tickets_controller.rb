class AddPhoneToNouveauTicketsController < ApplicationController
  # GET /add_phone_to_nouveau_tickets
  # GET /add_phone_to_nouveau_tickets.json
  def index
    @add_phone_to_nouveau_tickets = AddPhoneToNouveauTicket.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @add_phone_to_nouveau_tickets }
    end
  end

  # GET /add_phone_to_nouveau_tickets/1
  # GET /add_phone_to_nouveau_tickets/1.json
  def show
    @add_phone_to_nouveau_ticket = AddPhoneToNouveauTicket.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @add_phone_to_nouveau_ticket }
    end
  end

  # GET /add_phone_to_nouveau_tickets/new
  # GET /add_phone_to_nouveau_tickets/new.json
  def new
    @add_phone_to_nouveau_ticket = AddPhoneToNouveauTicket.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @add_phone_to_nouveau_ticket }
    end
  end

  # GET /add_phone_to_nouveau_tickets/1/edit
  def edit
    @add_phone_to_nouveau_ticket = AddPhoneToNouveauTicket.find(params[:id])
  end

  # POST /add_phone_to_nouveau_tickets
  # POST /add_phone_to_nouveau_tickets.json
  def create
    @add_phone_to_nouveau_ticket = AddPhoneToNouveauTicket.new(params[:add_phone_to_nouveau_ticket])

    respond_to do |format|
      if @add_phone_to_nouveau_ticket.save
        format.html { redirect_to @add_phone_to_nouveau_ticket, notice: 'Add phone to nouveau ticket was successfully created.' }
        format.json { render json: @add_phone_to_nouveau_ticket, status: :created, location: @add_phone_to_nouveau_ticket }
      else
        format.html { render action: "new" }
        format.json { render json: @add_phone_to_nouveau_ticket.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /add_phone_to_nouveau_tickets/1
  # PUT /add_phone_to_nouveau_tickets/1.json
  def update
    @add_phone_to_nouveau_ticket = AddPhoneToNouveauTicket.find(params[:id])

    respond_to do |format|
      if @add_phone_to_nouveau_ticket.update_attributes(params[:add_phone_to_nouveau_ticket])
        format.html { redirect_to @add_phone_to_nouveau_ticket, notice: 'Add phone to nouveau ticket was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @add_phone_to_nouveau_ticket.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /add_phone_to_nouveau_tickets/1
  # DELETE /add_phone_to_nouveau_tickets/1.json
  def destroy
    @add_phone_to_nouveau_ticket = AddPhoneToNouveauTicket.find(params[:id])
    @add_phone_to_nouveau_ticket.destroy

    respond_to do |format|
      format.html { redirect_to add_phone_to_nouveau_tickets_url }
      format.json { head :no_content }
    end
  end
end
