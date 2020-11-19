class RemoveColumnFromBookings < ActiveRecord::Migration[6.0]
  def change
    remove_column :bookings, :message
  end
end
