ActiveAdmin.register Event do
  permit_params :name, :description, :starts_at, :ordering, :ends_at, :image, :address
  config.filters = false

  index do
    id_column
    column :name
    column :starts_at
    column :ends_at
    actions
  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :description
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
      row :description do |event|
        event.description.html_safe
      end
      row :starts_at
      row :ends_at
      row :ordering
      row :address
      row :image do
        image_tag event.image.url(:thumb)
      end
    end
  end

end
