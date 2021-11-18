class Booking < ApplicationRecord
  belongs_to :restaurant
  belongs_to :hotel
  belongs_to :club
end
