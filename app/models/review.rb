class Review < ApplicationRecord
  belongs_to :bench
  belongs_to :user
  validates :description, presence: true
  validates :rating, inclusion: { in: 0..5 }, numericality: { only_integer: true }
end
