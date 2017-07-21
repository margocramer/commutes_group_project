class Commute < ApplicationRecord
  belongs_to :user
  has_many :reviews

  validates :starting_location, presence: true
  validates :ending_location, presence: true
  validates :time, inclusion: { in: ["Early Morning", "Morning", "Afternoon", "Early Evening", "Evening", "Night"] }
  validates :mode, inclusion: { in: ["Train", "Walk", "Automobile", "Bike"] }
end
