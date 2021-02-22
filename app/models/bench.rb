class Bench < ApplicationRecord
  belongs_to :users
  has_many :bookings, :reviews
end
