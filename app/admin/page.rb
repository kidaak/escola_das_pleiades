ActiveAdmin.register Page do
  permit_params :content, :page_name

  index do
    column :page_name
    actions
  end

  form do |f|
    f.inputs "Página" do
      f.input :page_name, as: :select, collection: ['Escola'], include_blank: false
      f.input :content, as: :html_editor
    end
    f.actions
  end

  show do
    attributes_table do
      row :id
      row :page_name
      row :content do |page|
        page.content.html_safe
      end
      row :created_at
      row :updated_at
    end
  end
end
