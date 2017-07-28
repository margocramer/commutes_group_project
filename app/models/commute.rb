class Commute < ApplicationRecord
  belongs_to :user
  has_many :reviews, :dependent => :destroy

  validates :starting_location, presence: true
  validates :ending_location, presence: true
  validates :time, inclusion: { in: ["Early Morning", "Morning", "Afternoon", "Early Evening", "Evening", "Night"] }
  validates :mode, inclusion: { in: ["Train", "Walk", "Automobile", "Bike"] }

  METHODS = [
    ["Train", "Train"],
    ["Walk", "Walk"],
    ["Automobile", "Automobile"],
    ["Bike", "Bike"]
  ]

  TIMES = [
    ["Early Morning", "Early Morning"],
    ["Morning", "Morning"],
    ["Afternoon", "Afternoon"],
    ["Early Evening", "Early Evening"],
    ["Evening", "Evening"],
    ["Night", "Night"]
  ]

  def self.search(query)
    query = "%#{query}%"
    where("(starting_location like ? or ending_location like ?)", query, query)
  end
end
