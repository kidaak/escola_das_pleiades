class AddImageInfoToNews < ActiveRecord::Migration
  def change
    add_column :news, :image_credit, :string
    add_column :news, :image_caption, :string
  end
end
