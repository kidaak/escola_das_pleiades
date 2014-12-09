class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.text :content
      t.string :page_name

      t.timestamps
    end
  end
end
