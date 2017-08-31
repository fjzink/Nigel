class Resource < ApplicationRecord
  has_many :resource_hashtags
  has_many :hashtags, through: :resource_hashtags

  validates :title, :content, presence: true

  def self.search(search)
    where("title LIKE ? OR content LIKE ?", "%#{search}%", "%#{search}%")
  end

  after_create do
    resource = Resource.find_by(id: self.id)
    hashtags = self.content.scan(/#\w+/)
    hashtags.uniq.map do |hashtag|
      tag = Hashtag.find_or_create_by(tag: hashtag.downcase.delete('#'))
      resource.hashtags << tag
    end
  end

  before_update do
    resource = Resource.find_by(id: self.id)
    resource.hashtags.clear
    hashtags = self.content.scan(/#\w+/)
    hashtags.uniq.map do |hashtag|
      tag = Hashtag.find_or_create_by(tag: hashtag.downcase.delete('#'))
      resource.hashtags << tag
    end
  end
end
