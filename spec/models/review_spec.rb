require 'rails_helper'

RSpec.describe Review, type: :model do
  it { should belong_to :user }
  it { should belong_to :commute }

  it { should have_valid(:review_stars).when(1, 2, 3, 4, 5) }
  it { should_not have_valid(:review_stars).when("cabbage", "", nil)}

   it "should match string's numbers" do
     review = Review.new
     review.user_id = 1
     review.commute_id = 1
     review.review_stars = 2.7

     review.save

     expect(review.review_stars).to_not eq (2.7)
   end

  it { should have_valid(:comment).when("What a lovely commute!") }
  it { should_not have_valid(:comment).when(nil, "")}

end
