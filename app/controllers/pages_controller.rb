class PagesController < ApplicationController
  def home
    @news = New.home
    @super_new = New.super_new
    @events = Event.home
    @video = Video.home
  end
  def about
  end
  def contact
  end
end
