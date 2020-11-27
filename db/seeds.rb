# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])

  require "open-uri"
#   Character.create(name: 'Luke', movie: movies.first)

20.times do
  article = Article.new(
    title: Faker::Book.title,
    body: Faker::TvShows::TwinPeaks.quote
  )

  file = URI.open("https://source.unsplash.com/random/#{rand(800..1000)}x#{rand(800..1000)}")

  article.photo.attach(io: file, filename: "#{article.title}.png", content_type: 'image/png')
  puts "Created article#{article.id}"
  article.save!
end




