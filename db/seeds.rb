# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Creating cities...'

City.create!(name: 'Paris')
City.create!(name: 'London')
City.create!(name: 'Barcelona')
City.create!(name: 'New York')
City.create!(name: 'Los Angeles')

puts 'Creating Paris restaurants...'

Restaurant.create!(name: 'Epoca', address: '17 Rue Oudinot, 75007 Paris, France', city_id: 1)
Restaurant.create!(name: 'Ida Restorante', address: '117 Rue de Vaugirard, 75015 Paris, France', city_id: 1)
Restaurant.create!(name: 'Papadoom Kitchen', address: '157 Rue Montmartre, 75002 Paris, France', city_id: 1)
Restaurant.create!(name: 'Rebellato', address: '136 Rue de la Pompe, 75116 Paris, France', city_id: 1)

puts 'Creating Paris hotels'

Hotel.create!(name: 'Hyatt Regency Paris Étoile', address: '3 Pl. du Général Kœnig, 75017 Paris, France', city_id: 1)
Hotel.create!(name: "OKKO Hotels Paris Gare de l'Est", address: "23 Rue d'Alsace, 75010 Paris, France", city_id: 1)

puts 'Creating Paris bars'

Club.create!(name: 'Le Royal Bar', address: '124 Blvd Marguerite de Rochechouart, 75018 Paris, France', city_id: 1)
Club.create!(name: "Harry's New York Bar", address: '5 Rue Daunou, 75002 Paris, France', city_id: 1)
Club.create!(name: 'Bar 19.20',
             address: 'Prince de Galles, a Luxury Collection Hotel, Paris, 33 Av. George V, 75008 Paris, France', city_id: 1)

puts 'Creating London restaurants...'

10.times do
  Restaurant.create!(name: Faker::Restaurant.name, address: "#{Faker::Address.street_address}, London, UK", city_id: 2)
end

puts 'Creating London hotels'

10.times do
  Hotel.create!(name: Faker::Restaurant.name, address: "#{Faker::Address.street_address}, London, UK", city_id: 2)
end

puts 'Creating London bars'

10.times do
  Club.create!(name: Faker::Restaurant.name, address: "#{Faker::Address.street_address}, London, UK", city_id: 2)
end

puts 'Creating Barcelona restaurants...'

10.times do
  Restaurant.create!(name: Faker::Restaurant.name, address: "#{Faker::Address.street_address}, Barcelona, Spain",
                     city_id: 3)
end

puts 'Creating Barcelona hotels'

10.times do
  Hotel.create!(name: Faker::Restaurant.name, address: "#{Faker::Address.street_address}, Barcelona, Spain", city_id: 3)
end

puts 'Creating Barcelona bars'

10.times do
  Club.create!(name: Faker::Restaurant.name, address: "#{Faker::Address.street_address}, Barcelona, Spain", city_id: 3)
end

puts 'Creating New York restaurants...'

10.times do
  Restaurant.create!(name: Faker::Restaurant.name, address: "#{Faker::Address.street_address}, New York, USA",
                     city_id: 4)
end

puts 'Creating New York hotels'

10.times do
  Hotel.create!(name: Faker::Restaurant.name, address: "#{Faker::Address.street_address}, New York, USA", city_id: 4)
end

puts 'Creating New York bars'

10.times do
  Club.create!(name: Faker::Restaurant.name, address: "#{Faker::Address.street_address}, New York, USA", city_id: 4)
end

puts 'Creating Los Angeles restaurants...'

10.times do
  Restaurant.create!(name: Faker::Restaurant.name, address: "#{Faker::Address.street_address}, Los Angeles, USA",
                     city_id: 5)
end

puts 'Creating Los Angeles hotels'

10.times do
  Hotel.create!(name: Faker::Restaurant.name, address: "#{Faker::Address.street_address}, Los Angeles, USA", city_id: 5)
end

puts 'Creating Los Angeles bars'

10.times do
  Club.create!(name: Faker::Restaurant.name, address: "#{Faker::Address.street_address}, Los Angeles, USA", city_id: 5)
end

puts '...done !'
