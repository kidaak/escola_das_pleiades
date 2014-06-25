class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :credit
      t.text :caption
      t.references :album

      t.timestamps
    end
  end
end
