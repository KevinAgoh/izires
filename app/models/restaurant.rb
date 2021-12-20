class Restaurant < ApplicationRecord
  belongs_to :city
  validates :name, presence: true
  validates :address, presence: true
end
