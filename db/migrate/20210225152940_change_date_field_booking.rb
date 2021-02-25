class ChangeDateFieldBooking < ActiveRecord::Migration[6.1]
  def change
    remove_column :bookings, :starting_date, :text
    remove_column :bookings, :ending_date, :text
    add_column :bookings, :starting_date, :date
    add_column :bookings, :ending_date, :date
  end
end
