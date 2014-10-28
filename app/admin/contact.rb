ActiveAdmin.register Contact do

  actions :all, :except => [:new, :edit]


  index do
    id_column
    column :full_name
    column :email do |contact|
      mail_to contact.email
    end
    column :created_at
    actions
  end
end
