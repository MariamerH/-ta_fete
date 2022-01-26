class Place < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many_attached :photos

  validates :photos, presence: true
  validates :name, presence: true
  validates :address, presence: true
  validates :description, presence: true
  validates :price_per_day, presence: true
  validates :capacity, presence: true
end
