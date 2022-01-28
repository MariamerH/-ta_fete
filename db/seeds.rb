# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Place.create( name: 'Villa Eucaliptos', address: 'Lima', description: 'Se Alquila casa de campo en Cieneguilla, área total de 5.000m2 , para todo tipo de eventos.', price_per_day: 2500, capacity: 180, user_id: 1)
Place.create( name: 'Posada Santa María', address: 'Trujillo', description: 'Tiene sala de conferencia, habitaciones con baño privado, capilla y jardines amplios.', price_per_day: 3000, capacity: 150, user_id: 2)
Place.create( name: 'Sukha Buda Lounge', address: 'Piura', description: 'Cuenta con un servicio impecable y con instalaciones de lujo ideales para celebrar tu boda.', price_per_day: 5300, capacity: 250, user_id: 3)
Place.create( name: 'Pachakanchay', address: 'Arequipa', description: 'Cuenta con amplios espacios y modernos servicios para realizar todo tipo de eventos.', price_per_day: 4900, capacity: 200, user_id: 4)
