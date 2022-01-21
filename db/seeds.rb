# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Flat.destroy_all

puts 'Creating flats...'
4.times do
  flat = Flat.create!({ name: Faker::App.name, address: Faker::Address.street_address, description: Faker::Quote.most_interesting_man_in_the_world, price_per_night: Faker::Number.decimal, number_of_guests: Faker::Number.digit})
  puts "Created #{flat.name}"
end
puts 'Finished!'
