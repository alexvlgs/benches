class Booking < ApplicationRecord
  belongs_to :benches
  belongs_to :users
end
