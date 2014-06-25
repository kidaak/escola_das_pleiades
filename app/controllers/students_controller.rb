class StudentsController < ApplicationController
  before_action :authenticate_student!
  def show
    @uploads = current_student.uploads
  end
  def download
    upload = current_student.uploads.find(params[:id])
    data = open(upload.file.url)
    send_data data.read, :type => data.content_type, :x_sendfile=>true,
     filename: upload.file.original_filename
  end
end
