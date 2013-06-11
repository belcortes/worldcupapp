class User < ActiveRecord::Base
  attr_accessible :name, :itinerary_id

  has_one :itinerary
  has_many :games, through: :itineraries
end
