# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
require 'faker'
require 'date'
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# User.destroy_all


puts "Cleaning the database"

Review.destroy_all
Booking.destroy_all
Studio.destroy_all
User.destroy_all
puts  "Cleaned DB"


puts "Creating User seeds"

5.times do
  User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    photo: Faker::Avatar.image,
    email: Faker::Internet.email,
    password: "123456",
    host: true
    )
end


  5.times do
  User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    photo: Faker::Avatar.image,
    email: Faker::Internet.email,
    password: "123456",
    host: false
    )
end

ADRESSES = ["Piazza Duca D'Aosta, Milan", "Piazza Freud, 1, MIlan", "Piazza Bottini, 10, Milan", "Via G. B. Cassinis, 83, Milan", "Piazzale P. Genova,4, Milan", "Via Domodossola, 15, Milan", "Via Oroboni, 16, Milan", "Via Domodossola, 15, Milan", "Viale Molise 71, Milan", "Piazza Ascari, Milan" ]

# 5.times do
#   Studio.create!(
#     name: Faker::Company.name,
#     category: ["recording studio", "photography studio", "dance studio"].sample ,
#     description: Faker::Name.last_name,
#     address: ADRESSES.sample,
#     photo: 'https://source.unsplash.com/random/?studio',
#     user: User.where(host: true).sample,
#     city: "milan",
#     )
# end

puts "Creating Studio seeds"

Studio.create!(name: "Record Factory", category: "recording studio", description: "A good place to record your music in the middle of Milan city", address: "Corso Magenta, 52", remote_photo_url: "https://images.unsplash.com/photo-1503507865322-6c069305c4f7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80", user: User.where(host: true).sample, price: 30, city: "milan")
Studio.create!(name: "Graphy", category: "photography studio", description: "the perfect place to make awesome photos in the middle of Milan city", address: "via cufra, 8", remote_photo_url: "https://images.unsplash.com/photo-1471341971476-ae15ff5dd4ea?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2089&q=80", user: User.where(host: true).sample, price: 15, city: "milan")
Studio.create!(name: "Hit studios", category: "recording studio", description: "the perfect place to organize studio sessions with musicians", address: "Piazzale P. Genova,4", remote_photo_url: "https://images.unsplash.com/photo-1517273006195-51fa3364bce2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1566&q=80", user: User.where(host: true).sample, price: 32 , city: "milan")
Studio.create!(name: "YourPhoto", category: "photography studio", description: "the perfect place to organize photography portraits", address: "Piazzale P. Genova,4", remote_photo_url: "https://images.unsplash.com/photo-1527011046414-4781f1f94f8c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80", user: User.where(host: true).sample, price: 20, city: "milan")
Studio.create!(name: "Felix Studio", category: "recording studio", description: "the perfect place to organize studio sessions with musicians", address: "Piazzale P. Genova,4", remote_photo_url: "https://images.unsplash.com/photo-1478737270239-2f02b77fc618?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80", user: User.where(host: true).sample, price: 32 , city: "milan")
Studio.create!(name: "Flute Factory", category: "recording studio", description: "A good place to record your music in the middle of Milan city", address: "Corso Magenta, 52", remote_photo_url: "https://images.unsplash.com/photo-1503507865322-6c069305c4f7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80", user: User.where(host: true).sample, price: 30, city: "milan")
Studio.create!(name: "Tempio del suono Studio", category: "recording studio", description: "the perfect place to organize studio sessions with musicians", address: "Piazzale P. Genova,4", remote_photo_url: "https://images.unsplash.com/photo-1478737270239-2f02b77fc618?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80", user: User.where(host: true).sample, price: 32 , city: "milan")
Studio.create!(name: "Record Factory", category: "recording studio", description: "A good place to record your music in the middle of Milan city", address: "Corso Magenta, 52", remote_photo_url: "https://images.unsplash.com/photo-1503507865322-6c069305c4f7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80", user: User.where(host: true).sample, price: 30, city: "milan")
Studio.create!(name: "CoolLocation studio", category: "photography studio", description: "A good place to record your music in the middle of Milan city", address: "Corso Magenta, 52", remote_photo_url: "https://images.unsplash.com/photo-1503507865322-6c069305c4f7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80", user: User.where(host: true).sample, price: 30, city: "milan")
Studio.create!(name: "myphoto", category: "photography studio", description: "A good place to record your music in the middle of Milan city", address: "Corso Magenta, 52", remote_photo_url: "https://images.unsplash.com/photo-1503507865322-6c069305c4f7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80", user: User.where(host: true).sample, price: 30, city: "milan")

puts "Creating Booking seeds"

10.times do
  Booking.create(
    user: User.where(host: false).sample,
    studio: Studio.all.sample,
    checkin: Faker::Date.backward(13),
    checkout: Faker::Date.forward(13),
    )
end

puts "Creating Review seeds"

10.times do
  Review.create(
    booking: Booking.all.sample,
    description: Faker::Quote.robin,
    rating: rand(1..5))
end


puts "db:seed completed"

# Studio.new()
# Booking.new()
# Review.new()
