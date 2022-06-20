class Review < ApplicationRecord
  belongs_to :adoption
  belongs_to :user

  validates :rating, presence: true, numericality: { greater_than_or_equal_to: 1 }
  validates :rating, presence: true, numericality: { less_than_or_equal_to: 0 }
  validates :description, presence: true, length: { in: 3..114 }
end
