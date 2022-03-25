# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


user1= User.create!(email: "arnaud@gmail.com", password: "123456")

hotel1= Hotel.create(name: "Youth hostel", address:"Villa gaudelet 75011 Paris")
hotel2= Hotel.create(name: "Bed an Breakfast", address:"Villa gaudelet 75011 Paris")
hotel3= Hotel.create(name: "Cheap Hotel", address:"Villa gaudelet 75011 Paris")
hotel4= Hotel.create(name: "The new Yorker", address:"Villa gaudelet 75011 Paris")
hotel5= Hotel.create(name: "Manhattan Palace", address:"Villa gaudelet 75011 Paris")
hotel6= Hotel.create(name: "Brooklyn path", address:"Villa gaudelet 75011 Paris")

room1= Room.create!(capacity:2, price_per_night:50, hotel_id:hotel1.id)
room2= Room.create!(capacity:3, price_per_night:50, hotel_id:hotel2.id)
room3= Room.create!(capacity:4, price_per_night:50, hotel_id:hotel3.id)
room4= Room.create!(capacity:2, price_per_night:50, hotel_id:hotel4.id)
room5= Room.create!(capacity:3, price_per_night:50, hotel_id:hotel5.id)
room6= Room.create!(capacity:2, price_per_night:50, hotel_id:hotel6.id)
booking1=Booking.create!(sarts_at: "24/03/2022", ends_at:"30/03/2022", room_id:room1.id, user_id:user1.id)
