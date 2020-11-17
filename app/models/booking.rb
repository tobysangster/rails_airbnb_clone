class Booking < ApplicationRecord
  belongs_to :equipment
  belongs_to :user

  validates :start_date, :end_date, :total_price, presence: true
end
