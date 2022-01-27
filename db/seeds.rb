# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'creando place'

Place.create( name: 'El Gran Salon', address: 'Lima', description: 'descripcion', price_per_day: 4, capacity: 12, user_id: 1)
Place.create( name: 'La Montaña', address: 'Trujillo', description: 'descripcion', price_per_day: 4, capacity: 12, user_id: 1)
Place.create( name: 'La Alberca', address: 'Arequipa', description: 'descripcion', price_per_day: 4, capacity: 12, user_id: 1)
Place.create( name: 'La Alberca', address: 'Arequipa', description: 'descripcion', price_per_day: 4, capacity: 12, user_id: 1)


puts 'place creado'
