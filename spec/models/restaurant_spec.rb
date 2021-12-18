require 'rails_helper'

RSpec.describe Restaurant, type: :model do
  it 'is valid with valid attributes'
  it 'must belong to a city'
  it 'is not valid without a title'
  it 'is not valid without an address'
end
