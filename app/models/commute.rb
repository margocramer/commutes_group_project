class Commute < ApplicationRecord
  belongs_to :user
  has_many :reviews

  validates :starting_location, presence: true
  validates :ending_location, presence: true
  validates :time, presence: true
  validates :mode, inclusion: { in: ["Train", "Walk", "Automobile", "Bike"] }
  validates :rating, inclusion: { in: [1, 2, 3, 4, 5] }
end
