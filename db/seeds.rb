# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

CONDITIONS = ["good", "average", "perfect"]

CLEARANCE = [true, false]
10.times do
  Product.create(name: Faker::Company.name, condition: CONDITIONS.sample, quantity: rand(0..10), on_clearance: CLEARANCE.sample, price: rand(0.00..500.00))
end
