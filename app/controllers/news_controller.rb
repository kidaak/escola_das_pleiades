class NewsController < ApplicationController
  def index
    @news = New.published
  end
  def show
    @new = New.find(params[:id])
  end
end
