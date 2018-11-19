# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
2.times do |i|
  User.create(name: "hoge#{i}",
              email: "hoge#{i}@example.com",
              legacy_code: 'abc',
              size: 'large',
              bio: 'ABCDEFGHIJKLMNOPQRSTUVWXYZABCDEFGHIJKLMNOPQRSTUVWXYZABCDE',
              password: 'ABCDEF',
              registration_number: '123456',
              points: 1.25,
              games_played: 6,
              boolean_field: false,)
end

5.times do |i|
  Product.create(name: "Product ##{i}", description: 'A product.')
end
