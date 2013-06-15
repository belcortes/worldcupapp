class User < ActiveRecord::Base
  attr_accessible :name, :email, :password, :admin, :itinerary_ids

  has_many :itineraries
  has_many :games, through: :itineraries

  has_secure_password

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: { in: 6..20 }


end
