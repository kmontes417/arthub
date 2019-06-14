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

HOSTS = [User.create!(first_name: "Pietro", last_name: "Ventimiglia", photo:"../app/assets/images/IMG_2820.JPG", email: "pietro@lewagon.com", password: "123456", host: true),
User.create!(first_name: "Mario", last_name: "Rossi", remote_photo_url: "https://images.unsplash.com/photo-1516060085740-1bed6d363077?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80", email: "mario@lewagon.com", password: "123456", host: true),
User.create!(first_name: "Luigi", last_name: "Rossi", remote_photo_url: "https://images.unsplash.com/photo-1518550475464-99b1438b9b69?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80", email: "luigi@lewagon.com", password: "123456", host: true),
User.create!(first_name: "yoshi", last_name: "crack", remote_photo_url: "https://images.unsplash.com/photo-1515006813794-d83c6372f898?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80", email: "yoshi@lewagon.com", password: "123456", host: true),
User.create!(first_name: "jack", last_name: "daniels", remote_photo_url: "https://images.unsplash.com/photo-1534864652366-f46034a7f6cf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2087&q=80", email: "jack@lewagon.com", password: "123456", host: true)
]


User.create!(first_name: "Mark", last_name: "Ross", remote_photo_url: "https://images.unsplash.com/photo-1492691527719-9d1e07e534b4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1651&q=80", email: "mark@lewagon.com", password: "123456", host: false)
User.create!(first_name: "emily", last_name: "whinehouse", remote_photo_url: "https://images.unsplash.com/photo-1495745966610-2a67f2297e5e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80", email: "emily@lewagon.com", password: "123456", host: false)
User.create!(first_name: "Johanna", last_name: "pups", remote_photo_url: "https://images.unsplash.com/photo-1455503521443-c39d5b861bc4?ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80", email: "jhoanna@lewagon.com", password: "123456", host: false)
User.create!(first_name: "kate", last_name: "willy", remote_photo_url: "https://images.unsplash.com/photo-1499442711659-a9566695faed?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80", email: "kate@lewagon.com", password: "123456", host: false)
User.create!(first_name: "larsen", last_name: "lulla", remote_photo_url: "https://images.unsplash.com/photo-1534455700361-eca9c3dbc981?ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80", email: "larsen@lewagon.com", password: "123456", host: false)


puts "Creating Studio seeds"

Studio.create!(name: "Record Factory", category: "recording studio", description: "A good place to record your music in the middle of Milan city", address: "corso magenta, 52", remote_photo_url: "https://images.unsplash.com/photo-1503507865322-6c069305c4f7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80", user: HOSTS.sample, price: 30, city: "milan")
Studio.create!(name: "Graphy", category: "photography studio", description: "the perfect place to make awesome photos in the middle of Milan city", address: "corso magenta, 10", remote_photo_url: "https://images.unsplash.com/photo-1471341971476-ae15ff5dd4ea?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2089&q=80", user: HOSTS.sample, price: 15, city: "milan")
Studio.create!(name: "Hit studios", category: "recording studio", description: "the perfect place to organize studio sessions with musicians", address: "corso magenta, 45", remote_photo_url: "https://images.unsplash.com/photo-1517273006195-51fa3364bce2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1566&q=80", user: HOSTS.sample, price: 32 , city: "milan")
Studio.create!(name: "YourPhoto", category: "photography studio", description: "the perfect place to organize photography portraits", address: "corso magenta, 2", remote_photo_url: "https://images.unsplash.com/photo-1527011046414-4781f1f94f8c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80", user: HOSTS.sample, price: 20, city: "milan")
Studio.create!(name: "Felix Studio", category: "recording studio", description: "the perfect place to organize studio sessions with musicians", address: "corso magenta, 20", remote_photo_url: "https://images.unsplash.com/photo-1478737270239-2f02b77fc618?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80", user: HOSTS.sample, price: 32 , city: "milan")
Studio.create!(name: "Flute Factory", category: "recording studio", description: "A good place to record your music in the middle of Milan city", address: "corso magenta, 58", remote_photo_url: "https://images.unsplash.com/photo-1525970335615-1cac01202510?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1649&q=80", user: HOSTS.sample, price: 30, city: "milan")
Studio.create!(name: "Tempio del suono Studio", category: "recording studio", description: "the perfect place to organize studio sessions with musicians", address: "corso magenta,100", remote_photo_url: "https://images.unsplash.com/photo-1502665607786-eaa3cd100809?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80", user: HOSTS.sample, price: 32 , city: "milan")
Studio.create!(name: "Record Factory", category: "recording studio", description: "A good place to record your music in the middle of Milan city", address: "corso magenta, 2", remote_photo_url: "https://images.unsplash.com/photo-1524103416206-a67f05a8154b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80", user: HOSTS.sample, price: 30, city: "milan")
Studio.create!(name: "CoolLocation studio", category: "photography studio", description: "A good place to record your music in the middle of Milan city", address: "corso magenta 100", remote_photo_url: "https://images.unsplash.com/photo-1539135950877-26943cd58152?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80", user: HOSTS.sample, price: 30, city: "milan")
Studio.create!(name: "myphoto", category: "photography studio", description: "A good place to record your music in the middle of Milan city", address: "corso magenta, 100", remote_photo_url: "https://images.unsplash.com/photo-1504118008923-1b1a92331fb7?ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80", user: HOSTS.sample, price: 30, city: "milan")

Studio.create!(name: "Dance Studio", category: "dance studio", description: "The perfect place to dance", address: "corso magenta, 23", remote_photo_url: "http://dancestar.com.hk/image/catalog/home_banner/about_us.jpg", user: HOSTS.sample, price: 32 , city: "milan")
Studio.create!(name: "Dancers Always", category: "dance studio", description: "A good place to dance", address: "corso magenta, 75", remote_photo_url: "https://dancehubsb.org/wp-content/uploads/2018/07/gallery-big-studio-2.jpg", user: HOSTS.sample, price: 30, city: "milan")

puts "Creating Booking seeds"

30.times do
  Booking.create(
    user: User.where(host: false).sample,
    studio: Studio.all.sample,
    checkin: Faker::Date.backward(13),
    checkout: Faker::Date.forward(13),
    )
end

puts "Creating Review seeds"

30.times do
  Review.create(
    booking: Booking.all.sample,
    description: ["Una cagata pazzesca.", "Wonderful studio in the middle of milan.", "Wow, I had a great time there!", "LOL, terrible.", "Definitly going back there.", "Wow it sucks.", "I had amazing time there.", "It works and it is a beautiful envoirment.", "Nice stuff, gonna rebook.", "Nice!"].sample,
    rating: rand(1..5))
end

puts "db:seed completed"

# Studio.new()
# Booking.new()
# Review.new()
