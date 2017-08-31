class ResourceHashtag < ApplicationRecord
  belongs_to :hashtags
  belongs_to :resources
end
