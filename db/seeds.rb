# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# 1. Clean the database 🗑️
puts "Cleaning database..."
Restaurant.destroy_all

# 2. Create the instances 🏗️
puts "Creating restaurants..."
Restaurant.create!(name: "Dishoom", address:"heaven", phone_number: "1234567", category: "chinese")
puts "Created Dishoom"
Restaurant.create!(name: "Sika", address:"heaven", phone_number: "1234568", category: "belgian")
puts "Created Sika"
Restaurant.create!(name: "Yeesh", address:"heaven", phone_number: "1234569", category: "french")
puts "Created Yeesh"
Restaurant.create!(name: "YC", address:"heaven", phone_number: "1234562", category: "french")
puts "Created YC"
Restaurant.create!(name: "UU", address:"heaven", phone_number: "1234562", category: "japanese")
puts "Created UU"

# 3. Display a message 🎉
puts "Finished! Created #{Restaurant.count} restaurants."
