class BookingsDateTime < ActiveRecord::Migration[6.1]
  def change
      change_column :bookings, :starting_date, :text
      change_column :bookings, :ending_date, :text
  end
end
