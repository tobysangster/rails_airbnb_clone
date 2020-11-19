class Booking < ApplicationRecord
  belongs_to :equipment
  belongs_to :user
  has_one :message
  validates :start_date, :end_date, presence: true
end
