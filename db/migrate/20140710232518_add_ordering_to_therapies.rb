class AddOrderingToTherapies < ActiveRecord::Migration
  def change
    add_column :therapies, :ordering, :integer
  end
end
