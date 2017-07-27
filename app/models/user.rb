class User < ApplicationRecord
  mount_uploader :photo_url, PhotoUrl

  has_many :commutes
  has_many :reviews
  has_many :votes

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :username, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :admin, inclusion: { in: [ true, false ] }
end
