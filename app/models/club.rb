class Club < ApplicationRecord
  belongs_to :city
  has_many :bookings, dependent: :destroy
  validates :name, presence: true
  validates :address, presence: true
end
