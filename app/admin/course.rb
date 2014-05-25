ActiveAdmin.register Course do
  permit_params :name, :description, :brief_description, :starts_at, :ends_at, :image
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
      f.input :brief_description
      f.input :starts_at
      f.input :ends_at
      f.input :image
    end
    f.actions
  end

  show do
    attributes_table do
      row :id
      row :name
      row :brief_description
      row :description do |course|
        course.description.html_safe
      end
      row :starts_at
      row :ends_at
      row :image do
        image_tag course.image.url(:thumb)
      end
    end
  end

end
