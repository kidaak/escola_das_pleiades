ActiveAdmin.register Album do
  permit_params :title, :description, :cover
  config.filters = false

  index do
    selectable_column
    id_column
    column :title
    column :description
    column :cover do |album|
      if album.cover
        album.cover
      else
        'Capa não definida'
      end
    end
    column 'Fotos' do |album|
      link_to 'Fotos', admin_album_pictures_path(album)
    end
    actions
  end
  form do |f|
    f.inputs "Admin Details" do
      f.input :title
      f.input :description
      f.input :cover, as: :select, collection: album.pictures.ids
    end
    f.actions
  end
end
