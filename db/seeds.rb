require 'faker'

ratings = rand(1.0..10.0)

puts "Cleaning database..."
Movie.destroy_all

puts "Creating movies..."

10.times do
  movie = Movie.create(title: Faker::Movie.title, overview: Faker::Movie.quote,
    poster_url: "https://image.tmdb.org/t/p/original/8UlWHLMpgZm9bx6QYh0NFoq67TZ.jpg", rating: ratings)

  movie.save
end

puts "Created movies, creating lists..."

List.create(name: "List 1").save
List.create(name: "List 2").save
List.create(name: "List 3").save
List.create(name: "List 4").save
List.create(name: "List 5").save

puts "Created lists. Finished!"



# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
