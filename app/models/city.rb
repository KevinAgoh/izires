class City < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_many :clubs
  has_many :hotels
  has_many :restaurants
end
