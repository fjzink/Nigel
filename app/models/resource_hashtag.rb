class ResourceHashtag < ApplicationRecord
  belongs_to :hashtag
  belongs_to :resource
end
