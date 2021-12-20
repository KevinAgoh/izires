class Booking < ApplicationRecord
  belongs_to :hotel
  belongs_to :club
  belongs_to :restaurant
end
