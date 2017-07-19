class Review < ApplicationRecord
  belongs_to :user
  belongs_to :commute
  has_many :votes

  validates :comment, presence: true
  validates :tally_count, presence: true, numericality: true
  validates :user_id, presence: true, numericality: true
  validates :commute_id, presence: true, numericality: true
end
