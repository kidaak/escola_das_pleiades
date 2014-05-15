class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :title
      t.text :content
      t.string :author
      t.integer :ordering
      t.text :headline
      t.datetime :publish_at

      t.timestamps
    end
  end
end