class Review < ApplicationRecord
  belongs_to :adoption
  belongs_to :user

  validates :rating, presence: true
  validates :description, presence: true, length: { in: 3..114 }
end
