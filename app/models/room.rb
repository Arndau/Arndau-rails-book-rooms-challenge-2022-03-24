class Room < ApplicationRecord
  has_many :bookings, dependent: :destroy
  belongs_to :hotel
  validates :capacity, presence: true, numericality: { only_integer: true, greater_than: 0}
  validates :price_per_night, presence: true, numericality: {only_integer: true, greater_than: 0}
end
