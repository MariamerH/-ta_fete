require "open-uri"

puts 'Creando Usuarios'
User.create( first_name: 'John', last_name: 'Figueroa', email:'john_figueroa@email.com', password: '1234567')
User.create( first_name: 'Mel', last_name: 'Valle', email:'mel_valle@email.com', password: '1234567')
User.create( first_name: 'Maria', last_name: 'Henriquez', email:'maria_henriquez@email.com', password: '1234567')
User.create( first_name: 'Jean', last_name: 'Pier', email:'jean_pier@email.com', password: '1234567')


puts 'Creando Places'
photo1 = URI.open('https://images.unsplash.com/photo-1576322649811-13dc99a3018d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=735&q=80')
photo2 = URI.open('https://images.unsplash.com/photo-1497366672149-e5e4b4d34eb3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1169&q=80')
photo3 = URI.open('https://images.unsplash.com/photo-1469371670807-013ccf25f16a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80')
photo4 = URI.open('https://images.unsplash.com/photo-1525596662741-e94ff9f26de1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80')

place1 = Place.new( name: 'Villa Eucaliptos', address: 'Lima', description: 'Se Alquila casa de campo en Cieneguilla, área total de 5.000m2 , para todo tipo de eventos.', price_per_day: 2500, capacity: 180, user_id: 1)
place1.photo.attach(io: photo1, filename: 'photo1.png', content_type: 'image/png')
place1.save
place2 = Place.new( name: 'Posada Santa María', address: 'Trujillo', description: 'Tiene sala de conferencia, habitaciones con baño privado, capilla y jardines amplios.', price_per_day: 3000, capacity: 150, user_id: 2)
place2.photo.attach(io: photo2, filename: 'photo2.png', content_type: 'image/png')
place2.save
place3 = Place.new( name: 'Sukha Buda Lounge', address: 'Piura', description: 'Cuenta con un servicio impecable y con instalaciones de lujo ideales para celebrar tu boda.', price_per_day: 5300, capacity: 250, user_id: 3)
place3.photo.attach(io: photo3, filename: 'photo3.png', content_type: 'image/png')
place3.save
place4 = Place.new( name: 'Pachakanchay', address: 'Arequipa', description: 'Cuenta con amplios espacios y modernos servicios para realizar todo tipo de eventos.', price_per_day: 4900, capacity: 200, user_id: 4)
place4.photo.attach(io: photo4, filename: 'photo4.png', content_type: 'image/png')
place4.save
