class AddNoticeToEvents < ActiveRecord::Migration
  def change
    add_column :events, :notice, :string
  end
end
