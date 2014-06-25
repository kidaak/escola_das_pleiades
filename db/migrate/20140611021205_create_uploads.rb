class CreateUploads < ActiveRecord::Migration
  def change
    create_table :uploads do |t|
      t.string :title
      t.string :url
      t.text :description
      t.references :student, index: true

      t.timestamps
    end
  end
end
