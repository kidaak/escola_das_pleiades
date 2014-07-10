ActiveAdmin.register Event do
  permit_params :name, :description, :starts_at, :ordering, :ends_at, :image, :address, :notice
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
      f.input :description, as: :html_editor
      f.input :headline
      f.input :starts_at
      f.input :ends_at
      f.input :ordering
      f.input :address
      f.input :image
      f.input :notice
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
      row :headline
      row :starts_at
      row :ends_at
      row :ordering
      row :address
      row :notice
      row :image do
        image_tag event.image.url(:thumb)
      end
    end
  end

end
