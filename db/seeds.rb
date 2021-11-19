# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Creating cities...'

City.create(name: 'Paris')
City.create(name: 'London')
City.create(name: 'Barcelona')
City.create(name: 'New York')
City.create(name: 'Los Angeles')

puts 'Creating restaurants...'

Restaurant.create(name: 'Epoca', address: '17 Rue Oudinot, 75007 Paris, France', city_id: 1)
Restaurant.create(name: 'Ida Restorante', address: '117 Rue de Vaugirard, 75015 Paris, France', city_id: 1)
Restaurant.create(name: 'Papadoom Kitchen', address: '157 Rue Montmartre, 75002 Paris, France', city_id: 1)
Restaurant.create(name: 'Rebellato', address: '136 Rue de la Pompe, 75116 Paris, France', city_id: 1)

puts '...done !'
