# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
500.times do
  Movie.create(title: Faker::Superhero.name, sinopsis: Faker::Lorem.paragraph, genre: Faker::Book.genre,
               rating: Random.rand(0.0..5.0).round(2))
end