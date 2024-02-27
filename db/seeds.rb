# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require 'faker'

def create_new_flat
Flat.create(
  name: Faker::Name.name,
  address: Faker::Address.street_address,
  description: Faker::Restaurant.review,
  price_per_night: rand(100..300),
  number_of_guests: rand(1..5)
)
end

puts "Creating Flats...."

 4.times do
  create_new_flat
 end

 puts "Flats created..."
