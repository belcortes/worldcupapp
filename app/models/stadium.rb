class Stadium < ActiveRecord::Base
  attr_accessible :capacity, :location, :name, :city_id

  belongs_to :city
  has_many :games
end
