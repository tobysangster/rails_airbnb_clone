# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Equipment.destroy_all
User.destroy_all

puts "creating equipments"
10.times do
  new_user = User.create!(
    email: Faker::Internet.email,
    password: "123456")
  new_equipment = Equipment.create!(
    title: ['kayak', 'boat', 'bike'].sample,
    description: Faker::Hipster.words(number: 8),
    price: rand(10..50),
    rules: "Add rules for this equipment",
    category: ['sport', 'hiking', 'indoor'].sample,
    user: new_user)
  puts "created"
end
