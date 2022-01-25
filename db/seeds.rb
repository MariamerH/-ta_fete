# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'creando place'

Place.create( name: 'Local 1', address: 'lima', description: 'descripcion', price_per_day: 4, capacity: 12, user_id: 1)

puts 'place creado'
