# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
puts "Creating restaurants..."
5.times do
  Restaurant.create!(
    name: Faker::Company.buzzword,
    address: Faker::ChuckNorris.fact,
    phone_number: Faker::PhoneNumber.phone_number,
    category: Restaurant::CATEGORIES.sample,
  )
end
puts "...Created #{Restaurant.count} restaurants!"
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
