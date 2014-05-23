class PagesController < ApplicationController
  def home
    @news = New.home
    @events = Event.home
  end
  def about
  end
  def contact
  end
end
