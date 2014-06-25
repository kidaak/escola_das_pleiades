class Upload < ActiveRecord::Base
  validates :title, presence: true
  validates :url, url: true
  has_attached_file :file
  belongs_to :student
end
