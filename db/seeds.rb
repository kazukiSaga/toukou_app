# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
if Rails.env == 'development'
    (1..100).each do |i|
        Tweet.create(content: "本文#{i}")
    end
end

if Rails.env == 'development'
    (1..100).each do |i|
        Tweet2.create(content: "本文#{i}")
    end
end