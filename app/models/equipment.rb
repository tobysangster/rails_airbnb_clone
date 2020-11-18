class Equipment < ApplicationRecord
  belongs_to :user
  has_many_attached :photos
  validates :title, :description, :price, presence: true
end
