class Album < ActiveRecord::Base
  validates :title, presence: :true
  has_many :pictures

  def album_cover
    if self.cover
      self.pictures.find(self.cover)
    else
      self.pictures.first
    end
  end
end
