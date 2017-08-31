class Hashtag < ApplicationRecord
  has_many :resourcehashtags
  has_many :resources, through: :resourcehashtags
end
