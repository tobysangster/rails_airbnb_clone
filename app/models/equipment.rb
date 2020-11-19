class Equipment < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many_attached :photos
  validates :title, :description, :price, :location, presence: true
end
