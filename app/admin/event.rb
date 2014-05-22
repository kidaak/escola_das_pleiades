ActiveAdmin.register Event do
  config.filters = false

  index do
    id_column
    column :name
    column :start_at
    column :ends_at
  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :description, as: :html_editor
      f.input :starts_at
      f.input :ends_at
      f.input :ordering
      f.input :address
      f.input :image
    end
    f.actions
  end

  show do
    attributes_table do
      row :id
      row :name
      row :description
      row :starts_at
      row :ends_at
      row :ordering
      row :address
      row :image do
        image_tag event.image.url(:thumb)
      end
    end
  end

  permit_params :name, :description, :starts_at, :ordering, :ends_at, :image, :address
end
