ActiveAdmin.register Contact do

  actions :all, :except => [:new, :edit]


  index do
    id_column
    column :name
    column :email
    column :created_at
    column :telephone
    actions
  end
end
