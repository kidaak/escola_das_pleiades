ActiveAdmin.register Upload do
  belongs_to :student
  permit_params :title, :description, :url, :file
  config.filters = false
  menu false
  navigation_menu :default

  index do
    id_column
    column :title
    column :url
    actions
  end

  form do |f|
    f.inputs do
      f.input :title
      f.input :description, as: :string
      f.input :url
      f.input :file, label: 'Arquivo (Máx: 10mb):'

    end
    f.actions
  end

  show do
    attributes_table do
      row :id
      row :title
      row :description
      row :url do
        link_to upload.url, upload.url, target: :blank
      end
      if upload.file.present?
        row :file do
          link_to upload.file.name, upload.file.url, target: :blank
        end
      end
      row :created_at
    end
  end

end
