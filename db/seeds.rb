User.create!(
  email: "test@test.com",
  password: "asdfasdf",
  username: "Admin User",
  admin: true
)
puts "1 Admin user created"
User.create!(
  email: "test2@test.com",
  password: "asdfasdf",
  username: "Regular User",
  admin: false
)
puts "1 regular user created"

3.times do |category|
  Category.create!(
    name: "Category #{category}"
  )
end

puts "3 Categories created"

10.times do |article|
  Article.create!(
    title: "My Post number #{article}",
    description: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.", user_id: User.last.id
  )
end

puts "10 articles created"

