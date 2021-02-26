# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#  lower_case_user = User.create!(first_name: "Peter", last_name: "Griffin", email: "griffin@gmail.com", password: "monkeys123")
#  lower_case_bench = Bench.create!( name: "buttcomfort", location: "buttland", user: lower_case_user)

Booking.destroy_all
Review.destroy_all
Bench.destroy_all
User.destroy_all

puts "creating 10 users"

10.times do
  User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: '1234hello')
end
puts "done"

puts "creating some benches"


# 10.times do
Bench.create(name:Faker::Color.color_name, user: User.all.sample, city: Faker::Address.city, location: "cascais", score: rand(1..5))
Bench.create(name:Faker::Color.color_name, user: User.all.sample, city: Faker::Address.city, location: "lisbon", score: rand(1..5))
Bench.create(name:Faker::Color.color_name, user: User.all.sample, city: Faker::Address.city, location: "paris", score: rand(1..5))
Bench.create(name:Faker::Color.color_name, user: User.all.sample, city: Faker::Address.city, location: "london", score: rand(1..5))
Bench.create(name:Faker::Color.color_name, user: User.all.sample, city: Faker::Address.city, location: "carcavelos", score: rand(1..5))
Bench.create(name:Faker::Color.color_name, user: User.all.sample, city: Faker::Address.city, location: "oeiras", score: rand(1..5))
Bench.create(name:Faker::Color.color_name, user: User.all.sample, city: Faker::Address.city, location: "rome", score: rand(1..5))
Bench.create(name:Faker::Color.color_name, user: User.all.sample, city: Faker::Address.city, location: "Jardim do Torel, Rua Júlio de Andrade, Lisboa", score: rand(1..5))
Bench.create(name:Faker::Color.color_name, user: User.all.sample, city: Faker::Address.city, location: "Rua do Conde de Redondo 91B, 1150-103 Lisboa", score: rand(1..5))
Bench.create(name:Faker::Color.color_name, user: User.all.sample, city: Faker::Address.city, location: "Padrão dos Descobrimentos, Av. Brasília, Lisboa", score: rand(1..5))
Bench.create(name:Faker::Color.color_name, user: User.all.sample, city: Faker::Address.city, location: "Alfama, Lisboa", score: rand(1..5))
Bench.create(name:Faker::Color.color_name, user: User.all.sample, city: Faker::Address.city, location: "Campo dos Mártires da Pátria, Lisboa", score: rand(1..5))
Bench.create(name:Faker::Color.color_name, user: User.all.sample, city: Faker::Address.city, location: "Piazza del Colosseo, 1, 00184 Roma RM, Itália", score: rand(1..5))
Bench.create(name:Faker::Color.color_name, user: User.all.sample, city: Faker::Address.city, location: "00154 Garbatella, Roma, Itália", score: rand(1..5))
Bench.create(name:Faker::Color.color_name, user: User.all.sample, city: Faker::Address.city, location: "Saldanha, Lisboa", score: rand(1..5))
Bench.create(name:Faker::Color.color_name, user: User.all.sample, city: Faker::Address.city, location: "Santos-o-Velho Lisboa", score: rand(1..5))
Bench.create(name:Faker::Color.color_name, user: User.all.sample, city: Faker::Address.city, location: "R. de Santa Cruz do Castelo, 1100-129 Lisboa", score: rand(1..5))
Bench.create(name:Faker::Color.color_name, user: User.all.sample, city: Faker::Address.city, location: "Arco da Rua Augusta lisboa", score: rand(1..5))
Bench.create(name:Faker::Color.color_name, user: User.all.sample, city: Faker::Address.city, location: "Campo de Santa Clara, 1100-471 Lisboa", score: rand(1..5))
# end
puts "done"

# puts "creating 10 bookings"
# 10.times do
#   Booking.create(user: User.all.sample, bench: Bench.all.sample, starting_date: Faker::Date.backward, ending_date:Faker::Date.forward)
# end

puts "creating 50 reviews"
50.times do
  Review.create(user: User.all.sample, bench: Bench.all.sample, description: Faker::TvShows::SouthPark.quote, rating: rand(1..5))
end
