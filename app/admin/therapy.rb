ActiveAdmin.register Therapy do

  permit_params :name, :description, :email, :image, :ordering
  config.filters = false

  index do
    id_column
    column :name
    column :email
    column :ordering
    actions
  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :description, as: :html_editor
      f.input :email
      f.input :ordering, as: :select, collection: [0,1,2,3,4,5,6,7,8,9,10]
      f.input :image
    end
    f.actions
  end

  show do
    attributes_table do
      row :id
      row :name
      row :email
      row :ordering
      row :description do |therapy|
        therapy.description.html_safe
      end
      row :image do
        image_tag therapy.image.url(:thumb)
      end
    end
  end
end
