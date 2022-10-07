class EventsController < ApplicationController
  def index
    @events = Event.all
    @event = Event.new
  end

  
  def create
    Event.create(event_params)
    redirect_to events_path
  end

  private

  def event_params
    params.require(:event).permit(:title, :content, :start_time)
  end

end
