# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
require 'faker'
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# User.destroy_all

5.times do
  User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    photo: Faker::Avatar.image,
    email: Faker::Internet.email,
    password: Faker::Coffee.variety,
    host: true
    )
end

  5.times do
  User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    photo: Faker::Avatar.image,
    email: Faker::Internet.email,
    password: Faker::Coffee.variety,
    host: false
    )
end

5.times do
  Studio.create!(
    name: Faker::Company.name,
    category: ["recording studio", "photography studio", "dance studio"].sample,
    description: Faker::Name.last_name,
    address: Faker::Address.full_address,
    photo: 'https://source.unsplash.com/random/?studio',
    user_id: rand(1..5)
    )
end





# Studio.new()
# Booking.new()
# Review.new()
