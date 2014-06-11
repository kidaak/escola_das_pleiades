class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :therapies, :brief_description, :email
    change_column :therapies, :email, :string
  end
end
