class Game < ActiveRecord::Base
  attr_accessible :city_id, :datetime, :location

  belongs_to :city
  has_and_belongs_to_many :itineraries
end
