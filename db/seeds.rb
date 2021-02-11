50.times do |post|
  Post.create(date: Date.today, rationale: "#{post} rationale content here")
end

puts "50 posts have been created"
