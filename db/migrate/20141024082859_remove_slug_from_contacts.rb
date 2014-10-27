class RemoveSlugFromContacts < ActiveRecord::Migration
  def change
    remove_column :contacts, :slug, :integer
  end
end
