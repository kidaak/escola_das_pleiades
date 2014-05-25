class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.datetime :starts_at
      t.datetime :ends_at
      t.text :description
      t.text :brief_description

      t.timestamps
    end
  end
end
