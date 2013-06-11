class User < ActiveRecord::Base
  attr_accessible :name, :itinerary_id, :email, :password

  has_one :itinerary
  has_many :games, through: :itineraries

  has_secure_password
end
