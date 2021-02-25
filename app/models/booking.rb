class Booking < ApplicationRecord
  belongs_to :bench
  belongs_to :user

  validate :end_before_start
  validates :starting_date, presence: :true
  validates :ending_date, presence: :true

  def start_time
    self.starting_date
  end

  def end_time
    self.ending_date
  end

  private

  def end_before_start
    return if starting_date.blank? || ending_date.blank?
    if end_time < start_time
      errors.add(:ending_date, "Must be after the starting date")
    end
  end
end
