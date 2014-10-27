class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :full_name
      t.string :cpf_cnpj
      t.string :zip_code
      t.string :address
      t.string :neighborhood
      t.string :city
      t.string :state
      t.string :email
      t.integer :slug
      t.references :course, index: true

      t.timestamps
    end
  end
end
