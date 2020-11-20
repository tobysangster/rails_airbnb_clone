class Equipment < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many_attached :photos
  validates :title, :description, :price, presence: true

  include PgSearch::Model
  pg_search_scope :search_by_title_and_category,
    against: [ :title, :category ],
    using: {
      tsearch: { prefix: true }
    }
end
