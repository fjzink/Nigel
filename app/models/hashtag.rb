class Hashtag < ApplicationRecord
  has_many :resource_hashtags
  has_many :resources, through: :resource_hashtags
end
