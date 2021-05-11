require "faker"

puts "Generating seeds..."

10.times do
  title = Faker::GreekPhilosophers.name
  content = Faker::GreekPhilosophers.quote
  Article.create(title: title, content: content)
end

  puts "Finished"