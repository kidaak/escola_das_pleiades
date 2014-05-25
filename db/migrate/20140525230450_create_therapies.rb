class CreateTherapies < ActiveRecord::Migration
  def change
    create_table :therapies do |t|
      t.string :name
      t.text :description
      t.text :brief_description

      t.timestamps
    end
  end
end
