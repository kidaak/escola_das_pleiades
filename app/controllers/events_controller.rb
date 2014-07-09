class EventsController < ApplicationController
  def index
    @events = Event.all.by_relevance
  end
  def show
    @event = Event.find(params[:id])
  end
end
