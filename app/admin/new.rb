ActiveAdmin.register New do
  permit_params :title, :content, :author, :ordering, :headline, :publish_at,
  :image, :image_credit, :image_caption


  index do
    id_column
    column :title
    column :author
    column :publish_at
    column :ordering
    actions
  end

  form do |f|
    f.inputs do
      f.input :title
      f.input :content, as: :html_editor
      f.input :author
      f.input :ordering
      f.input :headline
      f.input :image
      f.input :image_credit
      f.input :image_caption
      f.input :publish_at
    end
    f.actions
  end

  show do
    attributes_table do
      row :id
      row :title
      row :author
      row :content do |new|
        new.content.html_safe
      end
      row :headline
      row :ordering
      row :created_at
      row :updated_at
      row :publish_at
      row :image do
        image_tag new.image.url(:thumb)
      end
      row :image_credit
      row :image_caption
    end
  end
end
