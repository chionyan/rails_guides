# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
3.times do |i|
  auther = Auther.create(
    auther_name: "Auther ##{i + 1}",
    auther_number: (i + 1) * 11
  )
  2.times  { auther.books.create(published_at: Time.now) } if i == 0
  1.times  { auther.books.create(published_at: Time.now) } if i == 1
end
