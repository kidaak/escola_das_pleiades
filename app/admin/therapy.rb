ActiveAdmin.register Therapy do

  permit_params :name, :description, :brief_description, :image
  config.filters = false

  index do
    id_column
    column :name
    column :brief_description
    actions
  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :description, as: :html_editor
      f.input :brief_description
      f.input :image
    end
    f.actions
  end

  show do
    attributes_table do
      row :id
      row :name
      row :brief_description
      row :description do |therapy|
        therapy.description.html_safe
      end
      row :image do
        image_tag therapy.image.url(:thumb)
      end
    end
  end
end
