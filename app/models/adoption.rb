class Adoption < ApplicationRecord
  belongs_to :user
  belongs_to :tree
  has_many :reviews, dependent: :destroy

  validates :ends_at, presence: true
  validates :starts_at, presence: true
end
