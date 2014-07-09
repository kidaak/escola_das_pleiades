class AlbumsController < ApplicationController
  def index
    @albums = Album.all.order(updated_at: :desc, created_at: :desc)
  end
  def show
    @album = Album.find(params[:id])
  end
end
