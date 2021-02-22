class User < ApplicationRecord
	has_many :benches, :bookings
end
