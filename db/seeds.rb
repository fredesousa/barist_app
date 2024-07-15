# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

User.destroy_all

users = [
  { email: "fredesousa7@gmail.com", password: 'password', level: "Débutant" },
  { email: "amael.lathes@gmail.com", password: "password", level: "Intermédiaire" },
  { email: "larrieu.aurelien@gmail.com", password: "password", level: "Avance" },
  { email: "delvigjon@hotmail.fr", password: "password", level: "Débutant" },
]

User.create!(users)
puts "Created #{User.count} users"
