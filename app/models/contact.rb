class Contact < ActiveRecord::Base
  belongs_to :course


  validates :full_name, :cpf_cnpj, :zip_code, :address, :neighborhood, :city,
  :state, :email, :course, presence: true
  validates_format_of :email, with: Devise.email_regexp,
                       message: 'E-mail não parece válido'

end
