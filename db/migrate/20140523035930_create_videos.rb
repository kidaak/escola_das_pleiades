class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :link
      t.string :title
      t.boolean :home_page

      t.timestamps
    end
  end
end
