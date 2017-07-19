class Vote < ApplicationRecord
  validates :upvote, inclusion: { in: [ true, false ] }
end
