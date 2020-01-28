# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
class Seed

  def self.begin
    seed = Seed.new
    seed.generate_reviews
  end

  def generate_reviews
    20.times do |i|
      review = Review.create!(
        author: Faker::Book.author,
        country_name: Faker::Address.country,
        city_name: Faker::Address.city,
        content: Faker::TvShows::TwinPeaks.quote,
        rating: Faker::Number.within(range: 1..10)
      )
      puts "Review #{i}: Author is #{review.author} and review content is '#{review.content}'."
    end
  end
end

Seed.begin
