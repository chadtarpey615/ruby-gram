User.create!(name: "Test User", email: "test@testuser.com", password: "password123", password_confirmation: "password123", admin: true)

# bulk generate test users
99.times do |n|
    name = Faker::Name.name 
    email = "example-#{n+1}@testuser.org"
    password = "password123"
    User.create!(name: name, email: email, password: password, password_confirmation: password)
end


users = User.order(:created_at).take(5)
20.times do 
    content = Faker::Lorem.sentence(word_count: 5)
    users.each { |user| user.snapshots.create!(content: content)}
end