require 'faker'

puts 'Cleaning database...'
Restaurant.destroy_all
Review.destroy_all

puts 'Creating restaurants & reviews...'

10.times do
  restau = Restaurant.new(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    category: ['chinese', 'italian', 'japanese', 'french', 'belgian'].sample,
    phone_number: Faker::PhoneNumber.cell_phone
  )
  restau.save!
    10.times do
    review = Review.new(
      content: Faker::ChuckNorris.fact,
      rating: rand(1..5)
    )
  review.restaurant = restau
  review.save!
  end
end
puts 'Finished!'
