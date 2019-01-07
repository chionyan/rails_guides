# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Auther シードデータ
3.times do |i|
  Auther.create(
    auther_name: "Auther ##{i + 1}",
    auther_number: (i + 1) * 11
  )
end
Auther.find(2).update(active: false)

# Book シードデータ
Auther.all.each do |auther|
  (Auther.all.size - auther.id).times do
    auther.books.create(published_at: Time.now)
  end
end

# LineItem シードデータ
Book.all.each do |book|
  2.times do |i|
    book.line_items.create(sentence: "Sample sentence #{i + 1}")
  end
end

# Supplier(供給者) シードデータ
Supplier.create(name: 'Supplier 1')
Supplier.create(name: 'Supplier 2')

# Account(アカウント) シードデータ
Account.create(account_number: '123', supplier: Supplier.find_by(name: 'Supplier 2'))
Account.create(account_number: '234', supplier: Supplier.find_by(name: 'Supplier 1'))
