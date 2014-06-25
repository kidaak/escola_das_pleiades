ActiveAdmin.register Picture do

  permit_params :credit, :caption, :image
  config.filters = false
  belongs_to :album

  index do
    id_column
    column :credit
    column :caption
    column :image
    actions
  end

  form do |f|
    f.inputs do
      f.input :credit
      f.input :caption
      f.input :image
    end
    f.actions
  end

  show do
    attributes_table do
      row :id
      row :credit
      row :caption
      row :image do
        image_tag picture.image.url(:thumb)
      end
    end
  end
end
