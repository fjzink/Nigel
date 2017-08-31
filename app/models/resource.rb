class Resource < ApplicationRecord
  has_many :resourcehashtags
  has_many :hashtags, through: :resourcehashtags
end
