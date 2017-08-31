class Teacher < ApplicationRecord
  has_many :favorites, as: :favoritable
  has_many :favorited_resources, through: :favorites, source: :resource

  has_secure_password
end
