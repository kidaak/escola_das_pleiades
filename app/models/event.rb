class Event < ActiveRecord::Base
  has_attached_file :image, :styles => { medium: "690x450>", thumb: "200x200>" }
  validates :name, :description, :address, :starts_at, :ordering, presence: true
  validates :ordering, numericality: {greater_than_or_equal_to: 0, less_than: 4}
  validates_attachment :image, presence:true, :content_type => { content_type: "image/jpeg" }

  def self.by_relevance
    order("CASE WHEN starts_at >= current_timestamp THEN starts_at END ASC, CASE WHEN starts_at < current_timestamp THEN starts_at END DESC")
  end

  def self.home
    by_relevance.limit(3)
  end
  def past?
    ends_at < Time.now
  end

  def ongoing?
    starts_at < Time.now && ends_at > Time.now
  end
end
