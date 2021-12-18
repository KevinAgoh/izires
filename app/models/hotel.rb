class Hotel < ApplicationRecord
  belongs_to :city
  validates :name, presence: true
  validates :address, presence: true
  has_many :bookings, as: :bookable, dependent: :destroy
end
