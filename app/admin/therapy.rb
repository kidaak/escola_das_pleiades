ActiveAdmin.register Therapy do

  permit_params :name, :description, :email, :image
  config.filters = false

  index do
    id_column
    column :name
    column :email
    actions
  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :description, as: :html_editor
      f.input :email
      f.input :image
    end
    f.actions
  end

  show do
    attributes_table do
      row :id
      row :name
      row :email
      row :description do |therapy|
        therapy.description.html_safe
      end
      row :image do
        image_tag therapy.image.url(:thumb)
      end
    end
  end
end
