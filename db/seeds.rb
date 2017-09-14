require `faker`

10.times do
  User.create(name: Faker::Name.name,
              email: Faker::Internet.email,
              password: "testing123",
              password_confirmation: "testing123")
end
puts "Created 100 users."
