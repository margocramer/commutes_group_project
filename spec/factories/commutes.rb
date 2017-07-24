FactoryGirl.define do
  factory :commute do
    starting_location "Cambridge"
    ending_location "Boston"
    time "Morning"
    mode "Train"
    description "This was my commute and it was awesome!!!"
  end
end
