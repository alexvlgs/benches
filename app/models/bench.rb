class Bench < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :reviews
  has_many :booked_users, through: :bookings, source: :user
  has_many :reviewed_benches, through: :reviews, source: :user
end