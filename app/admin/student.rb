ActiveAdmin.register Student do
  permit_params :email, :password, :password_confirmation

  config.filters = false

  index do
    selectable_column
    id_column
    column :email
    column :uploads do |student|
      link_to 'Uploads', admin_student_uploads_path(student)
    end
    actions
  end

  show do
    attributes_table do
      row :id
      row :email
      row :sign_in_count
      row :uploads do |upload|
        link_to 'Uploads', admin_student_uploads_path(student)
      end
    end
  end
  form do |f|
    f.inputs "Admin Details" do
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end

end
