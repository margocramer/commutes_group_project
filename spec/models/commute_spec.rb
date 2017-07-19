require 'rails_helper'

RSpec.describe Commute, type: :model do
    describe do
      it { should have_valid(:starting_location).when("South Station") }
      it { should_not have_valid(:starting_location).when(nil, "")}

      it { should have_valid(:ending_location).when("Attleboro Station") }
      it { should_not have_valid(:ending_location).when(nil, "")}

      it { should have_valid(:time).when("Early Morning", "Morning", "Noon", "Afternoon", "Evening", "Night") }
      it { should_not have_valid(:time).when(nil, "")}

      it { should have_valid(:mode).when("Train", "Walk", "Automobile", "Bike") }
      it { should_not have_valid(:mode).when(nil, "", "Rocket-pack")}

      it { should have_valid(:description).when("It was okay, I guess") }

      it { should have_valid(:rating).when(1, 2, 3, 4, 5) }
      it { should_not have_valid(:rating).when(nil, "", -42, "potato") }
    end
end
