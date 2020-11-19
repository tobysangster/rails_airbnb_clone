class User < ApplicationRecord
  has_many :bookings
  has_many :equipment
  has_many :incoming_bookings, through: :equipment, source: :bookings
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
