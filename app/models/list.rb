class List < ApplicationRecord
  # associations
  has_one_attached :photo
  has_many :bookmarks
  has_many :movies, through: :bookmarks, dependent: :destroy

  # validations
  validates :name, presence: true, uniqueness: true
end
