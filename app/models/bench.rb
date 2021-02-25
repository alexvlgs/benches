class Bench < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :booked_users, through: :bookings, source: :user, dependent: :destroy
  has_many :reviewed_benches, through: :reviews, source: :user, dependent: :destroy
end
