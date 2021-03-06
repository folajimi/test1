class AddPone2ToTicketsController < ApplicationController
  # GET /add_pone2_to_tickets
  # GET /add_pone2_to_tickets.json
  def index
    @add_pone2_to_tickets = AddPone2ToTicket.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @add_pone2_to_tickets }
    end
  end

  # GET /add_pone2_to_tickets/1
  # GET /add_pone2_to_tickets/1.json
  def show
    @add_pone2_to_ticket = AddPone2ToTicket.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @add_pone2_to_ticket }
    end
  end

  # GET /add_pone2_to_tickets/new
  # GET /add_pone2_to_tickets/new.json
  def new
    @add_pone2_to_ticket = AddPone2ToTicket.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @add_pone2_to_ticket }
    end
  end

  # GET /add_pone2_to_tickets/1/edit
  def edit
    @add_pone2_to_ticket = AddPone2ToTicket.find(params[:id])
  end

  # POST /add_pone2_to_tickets
  # POST /add_pone2_to_tickets.json
  def create
    @add_pone2_to_ticket = AddPone2ToTicket.new(params[:add_pone2_to_ticket])

    respond_to do |format|
      if @add_pone2_to_ticket.save
        format.html { redirect_to @add_pone2_to_ticket, notice: 'Add pone2 to ticket was successfully created.' }
        format.json { render json: @add_pone2_to_ticket, status: :created, location: @add_pone2_to_ticket }
      else
        format.html { render action: "new" }
        format.json { render json: @add_pone2_to_ticket.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /add_pone2_to_tickets/1
  # PUT /add_pone2_to_tickets/1.json
  def update
    @add_pone2_to_ticket = AddPone2ToTicket.find(params[:id])

    respond_to do |format|
      if @add_pone2_to_ticket.update_attributes(params[:add_pone2_to_ticket])
        format.html { redirect_to @add_pone2_to_ticket, notice: 'Add pone2 to ticket was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @add_pone2_to_ticket.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /add_pone2_to_tickets/1
  # DELETE /add_pone2_to_tickets/1.json
  def destroy
    @add_pone2_to_ticket = AddPone2ToTicket.find(params[:id])
    @add_pone2_to_ticket.destroy

    respond_to do |format|
      format.html { redirect_to add_pone2_to_tickets_url }
      format.json { head :no_content }
    end
  end
end
