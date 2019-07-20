50.times do |n|
  email = Faker::Internet.email
  password = "password"
  User.create!(name: name, email: email, password: password, password_confirmation: password)
end
