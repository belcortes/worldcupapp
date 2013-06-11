class Game < ActiveRecord::Base
  attr_accessible :date, :match, :time, :location, :stadium_id

  belongs_to :stadium
  has_and_belongs_to_many :itineraries
end
