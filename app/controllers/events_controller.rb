class EventsController < ApplicationController
  def index
    @events = Event.all.by_relevance.page(params[:page]).per(12)
  end
  def show
    @event = Event.find(params[:id])
  end
end
