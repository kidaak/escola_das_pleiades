class AddOrderingToEvents < ActiveRecord::Migration
  def change
    add_column :events, :ordering, :integer
  end
end
