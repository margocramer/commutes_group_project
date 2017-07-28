class Review < ApplicationRecord
  belongs_to :user
  belongs_to :commute
  has_many :votes

  STARS = [
    ["*", 1],
    ["* *", 2],
    ["* * *", 3],
    ["* * * *", 4],
    ["* * * * *", 5]
  ]

  validates :comment, presence: true
  validates :review_stars, presence: true, numericality: true
  validates :user_id, presence: true, numericality: true
  validates :commute_id, presence: true, numericality: true
end
