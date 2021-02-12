@user = User.create(email: "test@test.com", password: "asdasd", password_confirmation: "asdasd", first_name: "Dawid", last_name: "User")
puts "1 user created"

AdminUser.create(email: "admintest@test.com", password: "asdasd", password_confirmation: "asdasd", first_name: "Dawid", last_name: "Szef")
puts "1 admin user created"

10.times do |post|
  Post.create(date: Date.today, rationale: "#{post} rationale content here", user_id: @user.id, status: "submitted")
end
puts "10 posts have been created"

10.times do |post|
  Post.create(date: Date.today, rationale: "#{post} rationale content here", user_id: @user.id, status: "approved")
end
puts "10 approved posts have been created"

10.times do |post|
  Post.create(date: Date.today, rationale: "#{post} rationale content here", user_id: @user.id, status: "rejected")
end
puts "10 rejected posts have been created"
