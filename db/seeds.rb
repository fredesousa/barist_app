User.destroy_all

users = [
  { email: "fredesousa7@gmail.com", password: 'password', level: :debutant },
  { email: "amael.lathes@gmail.com", password: "password", level: :intermediaire },
  { email: "larrieu.aurelien@gmail.com", password: "password", level: :avance },
  { email: "delvigjon@hotmail.fr", password: "password", level: :debutant },
]

users.each do |user_params|
  User.create!(user_params)
end

puts "Created #{User.count} users"
