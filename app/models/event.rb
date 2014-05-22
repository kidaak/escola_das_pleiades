class Event < ActiveRecord::Base
  has_attached_file :image, :styles => { medium: "690x450>", thumb: "200x200>" }
  validates :name, :description, :address, :starts_at, :ends_at, :ordering, presence: true
  validates :ordering, numericality: {greater_than_or_equal_to: 0, less_than: 4}
  validates_attachment :image, presence:true, :content_type => { content_type: "image/jpeg" }
end
