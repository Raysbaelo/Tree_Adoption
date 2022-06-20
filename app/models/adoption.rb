class Adoption < ApplicationRecord
  belongs_to :user
  has_many :reviews

  validates :ends_at, presence: true
  validates :starts_at, presence: true
end
