class Movie < ApplicationRecord
  has_many :bookmarks

  validates :title, uniqueness: true
  validates :title, length: { minimum: 1 }
  validates :overview, length: { minimum: 10 }
end
