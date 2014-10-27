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

  def create_contact
    @contact = Contact.new(contact_params)
    if @contact.save
      redirect_to root_path, notice: 'Obrigado. Você receberá instruções sobre como continuar em seu email'
    else
      render :contact
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:full_name, :email, :cpf_cnpj, :zip_code,
                                    :address, :neighborhood, :city, :state,
                                    :course_id)
  end
end
