class Page < ActiveRecord::Base
  validates :page_name, presence: true, uniqueness: true
  validates :content, presence: true
end
