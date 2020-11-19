class AddingMessageToBooking < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :message, :text
  end
end
