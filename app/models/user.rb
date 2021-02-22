class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
	has_many :benches
	has_many :bookings
	has_many :reviews
	has_many :booked_benches, through: :bookings, source: :bench
	has_many :reviewed_benches, through: :reviews, source: :bench
end
