class Movie < ApplicationRecord
  # Associations
  has_many :bookmarks
  has_many :lists, through: :bookmarks
  # Validations
  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true
end
