class List < ApplicationRecord
  # associations
  has_many :bookmarks
  has_many :movies, through: :bookmarks, dependent: :destroy

  # validations
  validates :name, presence: true, uniqueness: true
end
