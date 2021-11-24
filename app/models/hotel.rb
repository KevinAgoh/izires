class Hotel < ApplicationRecord
  belongs_to :City
  validates :name, presence: true
  validates :address, presence: true
  has_many :bookings, as: :bookable, dependent: :destroy
end
