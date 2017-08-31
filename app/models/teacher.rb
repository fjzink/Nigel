class Teacher < ApplicationRecord
  has_many :favorites, foreign_key: :favoriter_id
  has_many :favorited_resources, through: :favorites, source: :resources
end
