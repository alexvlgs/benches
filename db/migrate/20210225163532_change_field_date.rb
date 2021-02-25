class ChangeFieldDate < ActiveRecord::Migration[6.1]
  def change
    remove_column :bookings, :starting_date, :date
    remove_column :bookings, :ending_date, :date
    add_column :bookings, :starting_date, :datetime
    add_column :bookings, :ending_date, :datetime
  end
end
