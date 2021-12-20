class Booking < ApplicationRecord
  belongs_to :hotel, optional: true
  belongs_to :club, optional: true
  belongs_to :restaurant, optional: true
end
