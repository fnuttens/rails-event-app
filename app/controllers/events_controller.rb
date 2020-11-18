class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  # GET /events
  def index
    @events = Event.all
  end

  # GET /events/:id
  def show
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)

    if @event.save
      flash[:notice] = "Your event has been successfully saved"
    else
      flash[:alert] = "An error has occurred"
      render 'new'
    end
  end

  def edit
  end

  # PUT /events/update
  def update
    if @event.update(event_params)
      flash[:notice] = "Event correctly modified"
      redirect_to event_path(@event)
    else
      flash[:alert] = "An error has occurred"
      render 'edit'
    end
  end

  private

  def event_params
    params.require(:event).permit(:name, :address, :description)
  end

  def set_event
    @event = Event.find(params[:id])
  end
end
