class Resource < ApplicationRecord
  has_many :resource_hashtags
  has_many :hashtags, through: :resource_hashtags

  validates :title, :content, presence: true 

  after_create do 
    resource = Resource.find_by(id: self.id)
    hashtags = self.body.scan(/#\w+/)
    hashtags.uniq.map do |hashtag|
      tag = Hashtag.find_or_create_by(name: hashtag.downcase.delete('#'))
      # is the line above supposed to be hashtag?
      # is it supposed to tag in name?
      resource.hashtags << tag
      # is line above supposed to have "hastags"
    end 
  end

  before_update do 
    resource = Resource.find_by(id: self.id)
    resource.hashtags.clear
    hashtags = self.body.scan(/#\w+/)
    hashtags.uniq.map do |hashtag|
      tag = Hashtag.find_or_create_by(name: hashtag.downcase.delete('#'))
      resource.hashtags << tag
    end
  end 
end
