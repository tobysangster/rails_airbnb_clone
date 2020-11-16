class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.string :start_date
      t.string :end_date
      t.string :price
      t.integer :user_id
      t.integer :equipment_id

      t.timestamps
    end
  end
end
