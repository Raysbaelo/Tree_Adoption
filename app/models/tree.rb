class Tree < ApplicationRecord
  belongs_to :user
  has_many :adoptions, dependent: :delete_all

  validates :description, presence: true, length: { in: 20..280 }
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 1 }
  validates :quantity_per_year, presence: true, numericality: { greater_than_or_equal_to: 1 }
  validates :fruits, presence: true
  validates :name, presence: true
  validates :address, presence: true

end
