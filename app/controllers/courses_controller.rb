class CoursesController < ApplicationController
  def index
    @courses = Course.all.order(updated_at: :desc, created_at: :desc)
  end
  def show
    @course = Course.find(params[:id])
  end

  def subscribe
    @course = Course.find(params[:id])
    @contact = Contact.new
  end

  def create_contact
    @contact = Contact.new(contact_params)
    if @contact.save
      redirect_to root_path, notice: 'Obrigado. Você receberá instruções sobre como continuar em seu email'
    else
      @course = Course.find(params[:id])
      render :subscribe
    end
  end

  def contact_params
    params.require(:contact).permit(:full_name, :email, :cpf_cnpj, :zip_code,
                                    :address, :neighborhood, :city, :state,
                                    :course_id)
  end
end
