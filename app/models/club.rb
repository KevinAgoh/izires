class Club < ApplicationRecord
  belongs_to :City
  validates :name, presence: true
  validates :address, presence: true
  has_many :bookings, as: :bookable, dependant: :destroy
end
