@user = User.create(email: "test@test.com", password: "asdasd", password_confirmation: "asdasd", first_name: "Dawid", last_name: "User")
puts "1 user created"

AdminUser.create(email: "admintest@test.com", password: "asdasd", password_confirmation: "asdasd", first_name: "Dawid", last_name: "Szef")
puts "1 admin user created"

50.times do |post|
  Post.create(date: Date.today, rationale: "#{post} rationale content here", user_id: @user.id)
end

puts "50 posts have been created"
