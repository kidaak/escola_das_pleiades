class NewsController < ApplicationController
  def index
    @news = New.published.page(params[:page]).per(5)
  end
  def show
    @new = New.find(params[:id])
  end
end
