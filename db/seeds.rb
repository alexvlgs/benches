# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#  lower_case_user = User.create!(first_name: "Peter", last_name: "Griffin", email: "griffin@gmail.com", password: "monkeys123")
#  lower_case_bench = Bench.create!( name: "buttcomfort", location: "buttland", user: lower_case_user)

User.destroy_all
Bench.destroy_all
Booking.destroy_all

puts "creating 10 users"

10.times do
  User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: '1234hello')
end
puts "done"

puts "creating 10 benches"
10.times do
  Bench.create(name:Faker::Color.color_name, user: User.all.sample)
end
puts "done"

puts "creating 10 bookings"
10.times do
  Booking.create(user: User.all.sample, bench: Bench.all.sample)
end
puts "done"

puts "hi"
