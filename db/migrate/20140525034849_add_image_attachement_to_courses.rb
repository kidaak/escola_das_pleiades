class AddImageAttachementToCourses < ActiveRecord::Migration
  def self.up
    add_attachment :courses, :image
  end

  def self.down
    remove_attachment :courses, :image
  end
end
