require 'faker'

8.times do
  User.create(
    username: Faker::Ancient.god,
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.unique.email,
    password: "password123"
  )
end

5.times do
  Commute.create(
    user_id: 1,
    starting_location: Faker::LordOfTheRings.location,
    ending_location: Faker::LordOfTheRings.location,
    time: "Morning",
    mode: "Train",
    description: Faker::HowIMetYourMother.quote
  )
end

10.times do
  Review.create(
    user_id: 1,
    commute_id: rand(1..Commute.all.length),
    comment: Faker::Hobbit.quote,
    review_stars: 2
  )
end
