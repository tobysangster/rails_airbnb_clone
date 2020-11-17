class RenameTotlPriceToTotalPriceInBookings < ActiveRecord::Migration[6.0]
  def change
    rename_column :bookings, :totl_price, :total_price
  end
end
