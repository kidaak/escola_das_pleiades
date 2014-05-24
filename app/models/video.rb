class Video < ActiveRecord::Base
  validates :title, :url, presence: true
  validates :url, url: true

  def self.home
    where("home_page is TRUE").first
  end

  def code
    self.url[-11,11]
  end
end
