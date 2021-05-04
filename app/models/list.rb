class List < ApplicationRecord
  has_one_attached :photo
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks, dependent: :destroy

  validates :name, uniqueness: true
  validates :name, length: { minimum: 1 }
end
