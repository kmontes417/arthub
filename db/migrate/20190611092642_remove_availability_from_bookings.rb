class RemoveAvailabilityFromBookings < ActiveRecord::Migration[5.2]
  def change
    remove_column :bookings, :availability, :boolean
  end
end
