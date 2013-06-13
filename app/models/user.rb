class User < ActiveRecord::Base
  attr_accessible :name

  has_many :itineraries
  has_many :games, through: :itineraries
end
