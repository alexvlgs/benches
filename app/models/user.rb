class User < ApplicationRecord
	has_many :benches, :bookings, :reviews
end
