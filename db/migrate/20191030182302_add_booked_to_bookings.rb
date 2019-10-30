class AddBookedToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :booked_at, :date
  end
end
