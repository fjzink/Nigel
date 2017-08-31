class Resource < ApplicationRecord
  has_many :resource_hashtags
  has_many :hashtags, through: :resource_hashtags
end
