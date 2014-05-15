class New < ActiveRecord::Base
  validates :title, :content, :author, :ordering, :headline, :publish_at, presence: true
end
