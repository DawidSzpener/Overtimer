AdminUser.create(email: "admintest@test.com", password: "asdasd", password_confirmation: "asdasd", first_name: "Dawid", last_name: "Admin")
puts "1 admin user created"

@user = User.create(email: "test@test.com", password: "asdasd", password_confirmation: "asdasd", first_name: "Dawid", last_name: "User")
puts "1 user created"

10.times do |post|
  Post.create(date: Date.today, rationale: "#{post} rationale content here", user_id: @user.id, status: "submitted", overtime_request: 2.5)
end
puts "10 posts have been created"

10.times do |post|
  Post.create(date: Date.today, rationale: "#{post} rationale content here", user_id: @user.id, status: "approved", overtime_request: 2.5)
end
puts "10 approved posts have been created"

10.times do |post|
  Post.create(date: Date.today, rationale: "#{post} rationale content here", user_id: @user.id, status: "rejected", overtime_request: 2.5)
end
puts "10 rejected posts have been created"

20.times do |audit_log|
  AuditLog.create(start_date: (Date.today - 6.days), user_id: User.last.id, status: 0)
end
puts "20 audit logs have been created"
