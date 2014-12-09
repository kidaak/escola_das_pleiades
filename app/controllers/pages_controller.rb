class PagesController < ApplicationController
  def home
    @news = New.home
    @super_new = New.super_new
    @events = Event.home
    @video = Video.home
  end

  def about
    @about = Page.find_by(page_name: 'Escola').content
  end

  def contact
  end

end
