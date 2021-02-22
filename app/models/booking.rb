class Booking < ApplicationRecord
  belongs_to :bench
  belongs_to :user
end
