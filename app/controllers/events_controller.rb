class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  def index
    @events = Event.all
    @event = Event.new
  end

  
  def create
    Event.create(event_params)
    redirect_to events_path
  end

  def show
  end

  def edit
  end

  def update
    if @event.update(event_params)
      redirect_to events_path
    else
      render :edit_event
    end
  end

  def destroy
    @event.destroy
    redirect_to events_path
  end

  private

  def event_params
    params.require(:event).permit(:title, :content, :start_time).merge(user_id: current_user.id)
  end

  def set_event
    @event=Event.find(params[:id])
  end

end
