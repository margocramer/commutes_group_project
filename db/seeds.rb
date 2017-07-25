require 'faker'


8.times do
  User.create(
    username: Faker::Ancient.god,
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: "bob@bob.com",
    password: "hellllllllooooooo"
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




# 12.times do
#   Restaurant.create(
#     name: Faker::Book.title,
#     address: Faker::Address.street_address,
#     city: Faker::Address.city,
#     state: Faker::Address.state,
#     zip: Faker::Number.number(5),
#     description: Faker::Hacker.say_something_smart
#   )
# end
#
# 35.times do
#   Review.create( restaurant_id:rand(1..Restaurant.all.length), rating: rand(1..5), body: Faker::Lovecraft.paragraph)
# end
