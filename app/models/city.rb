class City < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  has_many :restaurants
  has_many :hotels
  has_many :clubs
end
