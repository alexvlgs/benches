class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :first_name, presence: true
  validates :last_name, presence: true
  has_many :benches
  has_many :bookings
  has_many :reviews
  has_many :booked_benches, through: :bookings, source: :bench
  has_many :reviewed_benches, through: :reviews, source: :bench
end
