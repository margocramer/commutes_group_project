require 'rails_helper'

RSpec.describe Commute, type: :model do
    describe do
      it { should have_valid(:starting_location).when("South Station") }
      it { should_not have_valid(:starting_location).when(nil, "")}

      it { should have_valid(:ending_location).when("Attleboro Station") }
      it { should_not have_valid(:ending_location).when(nil, "")}

      it { should have_valid(:time).when("Early Morning", "Morning", "Afternoon", "Early Evening", "Evening", "Night") }
      it { should_not have_valid(:time).when(nil, "")}

      it { should have_valid(:mode).when("Train", "Walk", "Automobile", "Bike") }
      it { should_not have_valid(:mode).when(nil, "", "Rocket-pack")}

      it { should have_valid(:description).when("It was okay, I guess") }

    end
end
