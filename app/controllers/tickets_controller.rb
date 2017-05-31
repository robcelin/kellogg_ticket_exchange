class TicketsController < ApplicationController
  def index
    @tickets = Ticket.all

    render("tickets/index.html.erb")
  end

  def show
    @ticket = Ticket.find(params[:id])

    render("tickets/show.html.erb")
  end

  def new
    @ticket = Ticket.new

    render("tickets/new.html.erb")
  end

  def create
    @ticket = Ticket.new

    @ticket.event_id = params[:event_id]
    @ticket.user_id = params[:user_id]
    @ticket.quantity = params[:quantity]
    @ticket.price = params[:price]
    @ticket.ticket_type = params[:ticket_type]
    @ticket.contact_method = params[:contact_method]

    save_status = @ticket.save

    if save_status == true
      redirect_to("/tickets/#{@ticket.id}", :notice => "Ticket created successfully.")
    else
      render("tickets/new.html.erb")
    end
  end

  def edit
    @ticket = Ticket.find(params[:id])

    render("tickets/edit.html.erb")
  end

  def update
    @ticket = Ticket.find(params[:id])

    @ticket.event_id = params[:event_id]
    @ticket.user_id = params[:user_id]
    @ticket.quantity = params[:quantity]
    @ticket.price = params[:price]
    @ticket.ticket_type = params[:ticket_type]
    @ticket.contact_method = params[:contact_method]

    save_status = @ticket.save

    if save_status == true
      redirect_to("/tickets/#{@ticket.id}", :notice => "Ticket updated successfully.")
    else
      render("tickets/edit.html.erb")
    end
  end

  def destroy
    @ticket = Ticket.find(params[:id])

    @ticket.destroy

    if URI(request.referer).path == "/tickets/#{@ticket.id}"
      redirect_to("/", :notice => "Ticket deleted.")
    else
      redirect_to(:back, :notice => "Ticket deleted.")
    end
  end
end
