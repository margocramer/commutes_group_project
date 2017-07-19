require 'rails_helper'

RSpec.describe Vote, type: :model do
  it { should have_valid(:upvote).when(true, false) }
  it { should_not have_valid(:upvote).when(nil, "")}
end
