ActiveAdmin.register Video do
  permit_params :title, :url, :home_page
  config.filters = false

  index do
    id_column
    column :home_page
    column :title
    column :url do |video|
      link_to video.url, video.url
    end
    actions
  end

  show do
    attributes_table do
      row :title
      row :url
      row :home_page
      row :created_at
      row :updated_at
    end
  end
end
