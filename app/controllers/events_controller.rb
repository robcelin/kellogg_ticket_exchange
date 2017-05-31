class EventsController < ApplicationController
  def index
    @events = Event.all

    render("events/index.html.erb")
  end

  def show
    @event = Event.find(params[:id])

    render("events/show.html.erb")
  end

  def new
    @event = Event.new

    render("events/new.html.erb")
  end

  def create
    @event = Event.new

    @event.start_date = params[:start_date]
    @event.end_date = params[:end_date]
    @event.start_time = params[:start_time]
    @event.end_time = params[:end_time]
    @event.ticket_face_value = params[:ticket_face_value]
    @event.address = params[:address]
    @event.event_description = params[:event_description]
    @event.tickets_available = params[:tickets_available]
    @event.campusgroups_url = params[:campusgroups_url]
    @event.image_url = params[:image_url]
    @event.event_category = params[:event_category]
    @event.name = params[:name]

    save_status = @event.save

    if save_status == true
      redirect_to("/events/#{@event.id}", :notice => "Event created successfully.")
    else
      render("events/new.html.erb")
    end
  end

  def edit
    @event = Event.find(params[:id])

    render("events/edit.html.erb")
  end

  def update
    @event = Event.find(params[:id])

    @event.start_date = params[:start_date]
    @event.end_date = params[:end_date]
    @event.start_time = params[:start_time]
    @event.end_time = params[:end_time]
    @event.ticket_face_value = params[:ticket_face_value]
    @event.address = params[:address]
    @event.event_description = params[:event_description]
    @event.tickets_available = params[:tickets_available]
    @event.campusgroups_url = params[:campusgroups_url]
    @event.image_url = params[:image_url]
    @event.event_category = params[:event_category]
    @event.name = params[:name]

    save_status = @event.save

    if save_status == true
      redirect_to("/events/#{@event.id}", :notice => "Event updated successfully.")
    else
      render("events/edit.html.erb")
    end
  end

  def destroy
    @event = Event.find(params[:id])

    @event.destroy

    if URI(request.referer).path == "/events/#{@event.id}"
      redirect_to("/", :notice => "Event deleted.")
    else
      redirect_to(:back, :notice => "Event deleted.")
    end
  end
end
