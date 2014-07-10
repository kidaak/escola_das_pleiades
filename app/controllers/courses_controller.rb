class CoursesController < ApplicationController
  def index
    @courses = Course.all.order(updated_at: :desc, created_at: :desc)
  end
  def show
    @course = Course.find(params[:id])
  end
end
