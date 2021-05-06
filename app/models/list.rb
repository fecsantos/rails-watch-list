class List < ApplicationRecord
  has_one_attached :photo
  has_many :reviews, dependent: :destroy
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks, dependent: :destroy
  has_many :reviews

  validates :name, uniqueness: true
  validates :name, length: { minimum: 1 }
end
