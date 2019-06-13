# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
require 'faker'
require 'date'
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# User.destroy_all

Review.destroy_all
Booking.destroy_all
Studio.destroy_all
User.destroy_all
puts  "Cleaned DB"

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

5.times do
  Studio.create!(
    name: Faker::Company.name,
    category: ["recording studio", "photography studio", "dance studio"].sample ,
    description: Faker::Name.last_name,
    address: ADRESSES.sample,
    photo: 'https://source.unsplash.com/random/?studio',
    user: User.where(host: true).sample,
    city: "milan",
    )
end

10.times do
  Booking.create(
    user: User.where(host: false).sample,
    studio: Studio.all.sample,
    checkin: Faker::Date.backward(13),
    checkout: Faker::Date.forward(13),
    )
end

10.times do
  Review.create(
    booking: Booking.all.sample,
    description: Faker::Quote.robin,
    rating: rand(1..5))
end

# Studio.new()
# Booking.new()
# Review.new()
