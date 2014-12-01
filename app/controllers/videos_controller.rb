class VideosController < ApplicationController
  def index
    @videos = Video.all.order(:created_at).page(params[:page]).per(4)
  end
end
