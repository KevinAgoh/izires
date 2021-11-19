class City < ApplicationRecord
  validates :name, presence: true
  has_many :restaurants
  has_many :clubs
  has_many :hotels
  validates :name, uniqueness: true
end
