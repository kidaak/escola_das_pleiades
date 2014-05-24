class Video < ActiveRecord::Base
  validates :title, :url, presence: true
  validates :url, url: true

  before_save :highlight

  def self.home
    where("home_page is TRUE").first
  end

  def code
    self.url[-11,11]
  end

  def highlight
    if self.home_page
      video = Video.where("home_page is TRUE").first
      if video.present?
        video.home_page = nil
        video.save
      end
    end
  end
end
