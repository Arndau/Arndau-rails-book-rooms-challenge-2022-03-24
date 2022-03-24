class Booking < ApplicationRecord
  belongs_to :room
  belongs_to :user
  validates :sarts_at, presence: true
  validates :ends_at, presence: true
end
