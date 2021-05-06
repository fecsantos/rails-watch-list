class Review < ApplicationRecord
  belongs_to :list

  validates :rating, presence: true
  validates :comment, presence: true

  validates :comment, length: { minimum: 6 }
  validates :rating, numericality: { only_interger: true, greater_than: 0, less_than_or_equal_to: 5 }
end
